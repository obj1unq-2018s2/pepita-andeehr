import pepita.*
import comidas.*

object pepon {
	var energia = 0
	
	method comer(cosa, gramos) { energia += (cosa.energiaPorGramo() * gramos) /2 }  // implementar
	method volar(kms) { energia -= (kms/2) + 1 }           // implementar
	method haceLoQueQuieras() { 
		self.volar(1)
	}   // implementar
	method energia() {return energia}
	method puedeVolar(unosKms) {
		return energia >= 1 + unosKms * 0.5
	}	 
}

// implementar el objeto entero, salvo haceLoQueQuieras que lo damos hecho
// ayuda: conviene ponerle dos atributos
object pipa {
	var kms = 0
	var grs = 0
	/*
	 * cuando le dicen a pipa que haga lo que quiera, no hace nada
	 */
	method comer(cosa, gramos) { grs += gramos}
	method volar(kilometros) { kms += kilometros }
	method kmsRecorridos() { return kms }
	method gramosIngeridos() { return grs }
	method haceLoQueQuieras() { }
	method puedeVolar(unosKms) {
		return true
	}   // queda asi
	// pregunta: ¿por qué es necesario agregar este método, sin código
	//respuesta: Porque es parte de la rutina de entrenamiento de roque.
	//Si no estuviera, roque no podria entrenarla
}
