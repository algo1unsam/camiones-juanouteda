import ruta.*
import cosas.*

object camion {
	var property carga = []
	var property cargaMaxima = 1000
	
	
	method cargar(unaCosa){
		if(self.acepta(unaCosa))
		carga.add(unaCosa)	
		else error.throwWithMessage("No se puede cargar, supera el peso")	
	}
	
	method descargar(unaCosa){
		
		carga.remove(unaCosa)
	}
	
	method cosaMasPeligrosa(){
		
		return carga.max{unaCosa=>unaCosa.nivelPeligrosidad()}
	}
	
	method tenesCargado(unaCosa){
		
		carga.contains(unaCosa)
	}
	
	method cargaActual(){
		
	return	carga.sum{unaCosa=>unaCosa.peso()}
		
	}
	
	method cargaDisponible(){
		
	return cargaMaxima - self.cargaActual()
	}
	
	method acepta(unaCosa){
		
		return self.cargaActual() + unaCosa.peso() < cargaMaxima 
	}
	
	method puedeCircular(){
		
	return	carga.all{unaCosa=>unaCosa.nivelPeligrosidad()<= ruta.limitePeligrosidad()}
	}
}


object motoneta{
	
	var property carga =[]
	var limitePeligrosidad = 5
	const property cargaMaxima = 100
	
	method cargar(unaCosa){
		if(self.acepta(unaCosa))
		 carga.add(unaCosa)		
		else  error.throwWithMessage("No se puede cargar, supera el peso o el nivel de peligrosidad es muy alto")
	}
	
	method acepta(unaCosa){
		
		return (unaCosa.nivelPeligrosidad() < limitePeligrosidad) and (unaCosa.peso() + self.cargaActual()< cargaMaxima) 
	}
	method cargaActual(){
		
	return	carga.sum{unaCosa=>unaCosa.peso()}
		
	}
}