import ruta.*
import cosas.*
import deposito.*

object camion {
	var carga = []
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
		
	return	carga.contains(unaCosa)
	}
	
	method pesoActual(){
		
	return	carga.sum{unaCosa=>unaCosa.peso()}
		
	}
	
	method cargaDisponible(){
		
	return cargaMaxima - self.pesoActual()
	}
	
	method acepta(unaCosa){
		
		return self.pesoActual() + unaCosa.peso() < cargaMaxima 
	}
	
	method puedeCircular(){
		
	return	carga.all{unaCosa=>unaCosa.nivelPeligrosidad()<= ruta.limitePeligrosidad()}
	}
}


object motoneta{
	
	var carga =[]
	var limitePeligrosidad = 5
	const property cargaMaxima = 100
	
	method cargar(unaCosa){
		if(self.acepta(unaCosa))
		 carga.add(unaCosa)		
		else  error.throwWithMessage("No se puede cargar, supera el peso o el nivel de peligrosidad es muy alto")
	}
	
	method acepta(unaCosa){
		
		return (unaCosa.nivelPeligrosidad() < limitePeligrosidad) and (unaCosa.peso() + self.pesoActual()< cargaMaxima) 
	}
	method pesoActual(){
		
	return	carga.sum{unaCosa=>unaCosa.peso()}
		
	}
	method tenesCargado(unaCosa){
		
	return	carga.contains(unaCosa)
	}
	
}