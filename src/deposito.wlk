import transportes.*
import cosas.*

object deposito {
	var cosasDeposito = []
	
	method recibirCosas(unaCosa){
		cosasDeposito.addAll(unaCosa)		
	}
	
	method llenarCamion(){
		
		cosasDeposito.forEach({unaCosa=>camion.cargar(unaCosa) 
		cosasDeposito.remove(unaCosa)
		})
		
	}
	
	method sacarTodo(){
		cosasDeposito.removeAll(cosasDeposito)
	}
	method inventarioContenes(unaCosa) {
		
	return	cosasDeposito.contains(unaCosa) 
	}
	
	method llenarMotoneta(){
		
		cosasDeposito.forEach({unaCosa=>motoneta.cargar(unaCosa) 
		cosasDeposito.remove(unaCosa)
		})
		
	}
}
