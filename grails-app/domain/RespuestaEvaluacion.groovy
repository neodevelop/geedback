/*
 * Copyright 2002-2008 Domingo Suarez Torres-SynergyJ.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
class RespuestaEvaluacion {
	Pregunta pregunta
	String respuestaAbierta
	OpcionRespuesta opcionRespuesta
	
	static belongsTo = [evaluacion:Evaluacion]
	
	static constraints = {
		opcionRespuesta(nullable:true)
		respuestaAbierta(nullable:true, blank:true, size:1..1000)
	}
}
