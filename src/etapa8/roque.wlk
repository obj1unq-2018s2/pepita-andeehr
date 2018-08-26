/*
 * Copiar pepita.wlk y comidas.wlk desde etapa3
 */
import pepita.*
import comidas.*
import masAves.*

object roque {
	var aveAEntrenar
	var avesAEntrenar = []
	method agregarPupilo(unAve) {
		avesAEntrenar.add(unAve)
	}
	method aves(){
		return avesAEntrenar
	}
	method dejarPupilo(unAve){
		avesAEntrenar.remove(unAve)
	}
	method pupilosCapacesDeVolar(unosKms){
		return
		avesAEntrenar.filter({
			unAve => unAve.puedeVolar(unosKms)
		})
	}
	method tuPupiloEs(ave) { aveAEntrenar = ave } // implementar
	method entrenar() {
		avesAEntrenar.forEach{ unAve => 
			unAve.volar(10)
			unAve.comer(alpiste, 300)
			unAve.volar(5)
			unAve.haceLoQueQuieras()
		}
	} 
	method pupiloActual(){
		return aveAEntrenar
	}
}