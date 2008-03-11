class EvalController {

    def index = {
		redirect(action:'evaluation')
	}

	def evaluationFlow = {
		welcome {
			on("next").to "selectUser"
		}
		selectUser{
			on("back").to "welcome"
			on("next").to "searchEvaluator"
		}
		searchEvaluator {
			action {
				def correo = params.correo
				def evaluador = Evaluador.findByCorreo(correo)
				
				if(evaluador) {
					flow.idEvaluador = evaluador.id
					return found()
				}
				else {
					evaluador = new Evaluador()
					evaluador.correo = correo
					flow.evaluador = evaluador
					
					flash.message = "evaluador.not.found"
		            flash.args = [params.correo]
		            flash.defaultMessage = "No se encontro al evaluador con el correo [${params.correo}]. Se procede a crear una nueva cuenta."
					
					return notFound()
				}
		   }
		   on("found").to "pickEvaluation"
		   on("notFound").to "newEvaluator"
		}
		newEvaluator{
			on("back").to "selectUser"
			on("next") {
				def evaluador = new Evaluador(params)
				flow.evaluador = evaluador
				flow.correo = evaluador.correo
				
				if(!evaluador || evaluador.hasErrors() || !evaluador.validate()) {
					return error()
				} else {
					evaluador.save()
				}
				flow.evaluador = evaluador
				
			}.to "pickEvaluation"
		}
		pickEvaluation {
			on("back").to "selectUser"
			on("next") {
				def cuestionario = Cuestionario.get(params.cuestionario.id)
				
				if(!cuestionario) {
					return error()
				} 
				
				def preguntaActual = Pregunta.findByCuestionario(cuestionario, [sort:"orden"])
				
				flow.idPreguntaActual = preguntaActual.id
				flow.cuestionario = cuestionario
				
				def respuestas = [:]
				flow.respuestas = respuestas
				
			}.to "searchQuestion"
		}
		searchQuestion {
			action {
				if(!flow.idPreguntaActual) {
					return finish()
				}
				flow.pregunta = Pregunta.get(flow.idPreguntaActual)
				
				[opciones:OpcionRespuesta.findAllByPregunta(flow.pregunta)]
			}
			on("success").to "askQuestion"
			on("finish").to "save"
		}
		askQuestion {
			on("back").to "pickEvaluation"
			on("next") {
				
				if (!params.respuesta) {
					flash.message = "question.not.found"
		            flash.defaultMessage = "Debes contestar la pregunta."
					return error()
				} 
				
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
			}.to "searchQuestion"
			on("return").to "save"
		}
		save {
			action {
				println "Guardando resultados."
				
				def eva = new Evaluacion(flow.idEvaluacion)
				eva.cuestionario = flow.cuestionario
				eva.save(flush:true)
				println eva
				
				def resp = new ArrayList()
				flow.respuestas.each { k, v->
					println "Iterando: " + k
					def p = Pregunta.get(k)
					def oR = new OpcionRespuesta()
					
					def respuestaEvaluacion = new RespuestaEvaluacion()
					respuestaEvaluacion.evaluacion = eva
					respuestaEvaluacion.pregunta = p
					
					println respuestaEvaluacion.evaluacion
					
					if(p.abierta) {
						respuestaEvaluacion.respuestaAbierta = v
					} else {
						oR = OpcionRespuesta.get(v)
						respuestaEvaluacion.opcionRespuesta = oR
					}
					resp.add(respuestaEvaluacion)
					println respuestaEvaluacion
				}
				
				resp.each {
					println "Item: $it"
					eva.addToRespuestas(it)
				}
				
				println eva
				println eva.respuestas
				eva.save(flush:true)
		   }
		   on("success").to "end"
		}
		end()
	}
}
