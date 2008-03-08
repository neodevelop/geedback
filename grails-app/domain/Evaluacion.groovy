class Evaluacion implements Serializable {
	Evaluador evaluador
	
	static belongsTo = [cuestionario:Cuestionario]
	
	static hasMany = [ respuestas : RespuestaEvaluacion ]
	
}
