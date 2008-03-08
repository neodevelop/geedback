class Cuestionario implements Serializable {
	String nombre
	String descripcion
	
	static hasMany = [ preguntas : Pregunta ]
	
	static constraints = {
		nombre(nullable:false, blank:false, size:1..30)
		descripcion(nullable:false, blank:false, size:1..100)
	}
	
	String toString() { "${nombre}" }
}
