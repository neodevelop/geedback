class Pregunta implements Serializable {
	String pregunta
	Boolean abierta = false
	Integer orden
	
	static hasMany = [ opciones : OpcionRespuesta ]
	
	static belongsTo = [cuestionario:Cuestionario]
	
	static constraints = {
		pregunta(nullable:false, blank:false, size:1..50)
		abierta(nullable:false)
		orden(nullable:false)
	}
	
	String toString() { "${pregunta}" }
}
