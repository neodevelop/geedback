class RespuestaEvaluacion {
	//Pregunta pregunta
	String respuestaAbierta
	//OpcionRespuesta opcionRespuesta
	
	static belongsTo = [evaluacion:Evaluacion]
	
	static constraints = {
		//pregunta(nullable:false)
		//opcionRespuesta(nullable:true)
		respuestaAbierta(nullable:false, blank:false, size:1..500)
	}
}
