import transportes.*

object deposito {
	var cosasDeposito = []
	
	method recibirCosas(unaCosa){
		cosasDeposito.addAll(unaCosa)		
	}
	
	method llenarCamion(){
		
		cosasDeposito.forEach({unaCosa=>camion.cargar(unaCosa)})
		
	}
	
	method sacarTodo(){
		cosasDeposito.removeAll()
	}
}
