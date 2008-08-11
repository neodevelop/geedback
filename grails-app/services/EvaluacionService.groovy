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
