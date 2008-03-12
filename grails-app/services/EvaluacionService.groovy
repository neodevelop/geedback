class EvaluacionService {

    boolean transactional = true

    def createEvaluation(evaluador, cuestionario, respuestas) {
		println "Guardando resultados."
		println evaluador
		println cuestionario
		println respuestas
		
		def eva = new Evaluacion()
		eva.cuestionario = cuestionario
		eva.evaluador = evaluador
		eva.save(flush:true)
		println eva
		
		respuestas.each { k, v->
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
			println respuestaEvaluacion
			
			eva.addToRespuestas(respuestaEvaluacion)
		}
		
		eva.save(flush:true)
		
		println eva
		println eva.respuestas
    }
}
