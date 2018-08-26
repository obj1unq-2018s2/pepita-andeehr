
object alpiste {
	method energiaPorGramo() { return 4 }
}

object mondongo {
	method energiaPorGramo() { return 100 }
}

// comida que esta fallada
object bigMac {
	method energiaPorGramo() { return 2 }
}

/*
 * el alcaucil da 20 joules por gramo
 */ 
object alcaucil {
	method energiaPorGramo() { return 20 }
}

/*
 * el sorgo da 9 joules por gramo
 */ 
object sorgo {
	method energiaPorGramo() {return 9}
}

// despues, agregar mijo y canelones
object mijo {
	var resultado = 0
	method mojarse(){
		resultado = 15
	}
	method secarse(){
		resultado = 20
	}
	method energiaPorGramo() {return resultado}
}

object canelones {
	var joules = 20
	method ponerQueso() {
		joules += 7
	}
	method sacarQueso(){
		joules -= 7
	}
	method ponerSalsa(){
		joules += 5
	}
	method sacarSalsa(){
		joules -= 5
	}
	method energiaPorGramo() {return joules}
}