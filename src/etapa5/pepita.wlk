import comidas.*

/*
 * Agregar
 * - los objetos que representan a los posibles destinos
 * - la capacidad de Pepita de visitar un destino, modificando su energía.
 */
 
object pepita {
	var energia = 0
	method energia() { return energia }
	method comer(cosa, gramos) { energia += cosa.energiaPorGramo() * gramos }
	method viajar(destino) {energia += destino.energiaPorViaje()}
}

object patagonia {
	method energiaPorViaje(){ return 30 }
}

object sierrasCordobesas{
	method energiaPorViaje(){ return 70 }
}

object marDelPlata {
	method energiaPorViaje(){
		if (estacion.esTemporadaBaja()){
			return 80
		}
		else {
			return -20
		}
	}
}

object noroeste {
	method energiaPorViaje(){
		return pepita.energia() * 0.1
	}
}

object estacion {
	// TODO Ojo con el nombre de variable "temporada = false" no me ayuda a entender si es temporada baja o alta.
	// Si se llamara temporadaAlta, o temporadaBaja, sería más claro.
	var temporada=false
	method cambiarTemporada(){
		temporada = not temporada
	}
	method esTemporadaBaja() {
		return temporada
	}
}