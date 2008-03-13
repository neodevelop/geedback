class RespuestaEvaluacion {
	Pregunta pregunta
	String respuestaAbierta
	OpcionRespuesta opcionRespuesta
	
	static belongsTo = [evaluacion:Evaluacion]
	
	static constraints = {
		//pregunta(nullable:false)
		opcionRespuesta(nullable:true)
		respuestaAbierta(nullable:true, blank:true, size:1..1000)
	}
}
