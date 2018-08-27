import comidas.*
import cosasQueVuelan.*
import masAves.*
import pepita.*
import roque.*
import susana.*

object instituto { 
	var entrenadores = []
	method contratar(entrenador){
		if (not entrenadores.contains(entrenador)){
			entrenadores.add(entrenador)
		}
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
	//Ver porque hace BOOM
		var estudiantes = []
		entrenadores.forEach{entrenador => 
			estudiantes += entrenador.mejorEstudiante()
			}
		return estudiantes
		}
}