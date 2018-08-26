/*
 * Traerse las definiciones de la etapa 4
 */
import roque.roque
import pepita.pepita
import masAves.pepon
import masAves.pipa

object helicopteroFeo {
  var kmDesdeUltimoService = 0
  const frecuenciaServiceKm = 1000

  method volar(km) { kmDesdeUltimoService += km }
  method requiereService() { return kmDesdeUltimoService >= frecuenciaServiceKm } 
  method registarService() { kmDesdeUltimoService = 0 }
}

object pepucha { 
  var cuantoComioDesdeUltimoVuelo = 0
  var kmVoladosConPilas = 0
  var kmVoladosSinPilas = 0

  method volar(km) { 
    if (cuantoComioDesdeUltimoVuelo > 100) {
      kmVoladosConPilas += km
    } else {
      kmVoladosSinPilas += km
    }
    cuantoComioDesdeUltimoVuelo = 0
  }
  method comer(cosa, gramos) { cuantoComioDesdeUltimoVuelo += cosa.energiaPorGramo() * gramos }
  method esBienTratada() { return kmVoladosConPilas >= kmVoladosSinPilas }
  method haceLoQueQuieras() {
  	
  }
}
/*
Si le indicamos a Roque que su pupilo es el helicóptero feo, ¿lo va a poder entrenar?
Si no puede, ¿por qué es? Más precisamente, ¿a qué objeto le falta algo, 
a roque o a helicopteroFeo? ¿qué es lo que falta?
*/

/*
 * No lo va a poder entrenar porque a helicoptero feo le falta los metodos comer()
 y haceLoQueQuieras()
  */