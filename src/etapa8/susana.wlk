/*
 * Traer, e importar, los objetos de la etapa 4.
 */
import pepita.*
import comidas.*
import masAves.*
import roque.*

object susana { 
	var aveAEntrenar
	method tuPupiloEs(ave) { aveAEntrenar = ave } // implementar
	method entrenar() {
		aveAEntrenar.comer(alpiste, 100)
		aveAEntrenar.volar(20)
		}
	method pupiloActual(){
		return aveAEntrenar
	}
	method estaContento(){
		aveAEntrenar.puedeVolar(5)
	}
	method mejorEstudiante(){
		return [aveAEntrenar]
	}
}  // implementar