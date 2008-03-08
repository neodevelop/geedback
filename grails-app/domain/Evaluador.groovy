class Evaluador implements Serializable {
	String nombre
	String apellidos
	String correo
	String empresa
	
	static constraints = {
		nombre(nullable:false, blank:false, size:1..30)
		apellidos(nullable:false, blank:false, size:1..40)
		correo(nullable:false, blank:false, size:1..100, email:true, unique:true)
		empresa(nullable:false, blank:false, size:1..50)
	}
	
	String toString() { "${nombre} ${apellidos}" }
}
