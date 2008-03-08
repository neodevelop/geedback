class EvalController {

    def index = {
		redirect(action:'evaluacion')
	}

	def evaluacionFlow = {
		bienvenida {
			on("siguiente").to "introduceUsuario"
		}
		introduceUsuario{
			on("siguiente").to "buscaUsuario"
		}
		buscaUsuario {
			action {
				def correo = params.correo
				def evaluador = Evaluador.findByCorreo(correo)
				def evaluacion = new Evaluacion()
				flow.evaluacion = evaluacion
				
				if(evaluador) {
					flow.evaluacion.evaluador = evaluador
					return encontrado()
				}
				else {
					return noEncontrado()
				}
		   }
		   on("encontrado").to "escogeCuestionario"
		   on("noEncontrado").to "nuevoEvaluador"
		}
		nuevoEvaluador{
			on("siguiente") {
				def evaluador = new Evaluador(params)
				flow.evaluador = evaluador
				
				if(!evaluador || evaluador.hasErrors() || !evaluador.validate()) {
					
					return error()
				} else {
					evaluador.save()
				}
				flow.evaluacion.evaluador = evaluador
				
			}.to "escogeCuestionario"
		}
		escogeCuestionario {
			on("siguiente") {
				def cuestionario = Cuestionario.get(params.cuestionario.id)
				
				if(!cuestionario) {
					return error()
				} 
				
				def preguntaActual = Pregunta.findByCuestionario(cuestionario, [sort:"orden"])
				
				flow.idPreguntaActual = preguntaActual.id
				flow.cuestionario = cuestionario
				println "escogeCuestionario idPreguntaActual: " +  flow.idPreguntaActual
				println flow.evaluacion
				
			}.to "buscaPregunta"
		}
		buscaPregunta {
			action {
				println "Buscando pregunta"
				if(!flow.idPreguntaActual) {
					return finaliza()
				}
				flow.pregunta = Pregunta.get(flow.idPreguntaActual)
				
				println flow.pregunta
				[opciones:OpcionRespuesta.findAllByPregunta(flow.pregunta)]
		   }
		   on("success").to "despliegaPregunta"
			on("finaliza").to "finaliza"
		}
		despliegaPregunta {
			on("siguiente") {
				println "DespliegaPregunta Submit"
				
				if (!params.respuesta) return error()
				
				if(!flow.pregunta.abierta) {
					def opcionRespuesta = OpcionRespuesta.get(params.respuesta)
				} else {
					
				}
				
				def pregActual = Pregunta.findByCuestionarioAndIdGreaterThan(flow.cuestionario, flow.idPreguntaActual, [sort:"orden"])
				
				println pregActual
				if(pregActual) {
					flow.idPreguntaActual = pregActual.id
				} else {
					flow.idPreguntaActual = null
				}
				
			}.to "buscaPregunta"
			on("return").to "finaliza"
		}
		finaliza()
	}
}
