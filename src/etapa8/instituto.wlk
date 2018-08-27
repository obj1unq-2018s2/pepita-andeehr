import comidas.*
import cosasQueVuelan.*
import masAves.*
import pepita.*
import roque.*
import susana.*

object instituto { 
	var entrenadores = []
	method contratar(entrenador){
		entrenadores.add(entrenador)
	}
	method prescindir(entrenador){
		entrenadores.remove(entrenador)
	}
	method entrenamientoGeneral(){
		entrenadores.forEach{entrenador =>
			entrenador.entrenar()
		}
	}
	method buenAmbiente(){
		return
		entrenadores.all{entrenador=>
			entrenador.estaContento()
		}
	}
	method mejoresEstudiantes(){
	//No devuelve nada, tengo que corregir este metodo todavia
		entrenadores.forEach{entrenador =>
			entrenador.mejorEstudiante()
			}
		}
}