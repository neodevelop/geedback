class OpcionRespuesta implements Serializable {
	String opcion
	Integer orden
	
	static belongsTo = [pregunta:Pregunta]
	
	static constraints = {
		opcion(nullable:false, blank:false, size:1..1000)
		orden(nullable:false)
	}	
	
	String toString() { "${opcion}" }
}
