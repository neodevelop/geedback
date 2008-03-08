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
				
				def respuestas = [:]
				flow.respuestas = respuestas
				
			}.to "buscaPregunta"
		}
		buscaPregunta {
			action {
				if(!flow.idPreguntaActual) {
					return finaliza()
				}
				flow.pregunta = Pregunta.get(flow.idPreguntaActual)
				
				[opciones:OpcionRespuesta.findAllByPregunta(flow.pregunta)]
		   }
		   on("success").to "despliegaPregunta"
			on("finaliza").to "guarda"
		}
		despliegaPregunta {
			on("siguiente") {
				
				if (!params.respuesta) return error()
				
				if(!flow.pregunta.abierta) {
					def opcionRespuesta = OpcionRespuesta.get(params.respuesta)
					flow.respuestas.put(flow.idPreguntaActual, opcionRespuesta.id)
				} else {
					flow.respuestas.put(flow.idPreguntaActual, params.respuesta)
				}
				
				def pregActual = Pregunta.findByCuestionarioAndIdGreaterThan(flow.cuestionario, flow.idPreguntaActual, [sort:"orden"])
				
				
				if(pregActual) {
					flow.idPreguntaActual = pregActual.id
				} else {
					flow.idPreguntaActual = null
				}
			}.to "buscaPregunta"
			on("return").to "guarda"
		}
		guarda {
			action {
				println "Guardando resultados."
				
				def q= new StringBuffer()
				flow.respuestas.each { k, v->
					def p = Pregunta.get(k)
					def oR = null
					println p
					
					if(p.abierta) {
						println v
					} else {
						oR = OpcionRespuesta.get(v)
						println oR
					}
				}
				println q.toString()
		   }
		   on("success").to "finaliza"
		}
		finaliza()
	}
}
