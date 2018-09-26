object knightRider {
	const property peso = 500
	const property nivelPeligrosidad = 10
	
}


object bumbleBee{
	var property peso = 800
	var property transformacion = auto
	
	method nivelPeligrosidad(){
		
		return transformacion.nivelPeligrosidad()
		
			}
			
	}
	
object auto{
  	const property nivelPeligrosidad = 15
	
}

object robot{
	
	const property nivelPeligrosidad = 30
}



object paqueteLadrillos{
	
	const property nivelPeligrosidad = 2
	
	var property ladrillos = 0
	
	method peso(){
		
		return ladrillos * 2
		
		
	}
}

object contenedorPortuario{
	
	var carga=[]
	const pesoFijo = 100
	
	method cargar(unaCosa){
		
		carga.add(unaCosa)
	}
	
	method peso(){
		return pesoFijo + carga.sum{unaCosa => unaCosa.peso()}
	}
	
	method nivelPeligrosidad(){
		if (carga.isEmpty())
		return 0
		else return carga.max{unaCosa=>unaCosa.nivelPeligrosidad()}.nivelPeligrosidad()
		
	}
}

object embalajeDeSeguridad{
	// TODO acá "la cosa" debería ser una atributo
	// ya que sino yo podria mandar los dos mensajes con cosas diferentes y las respuestas
	// no serían consistentes
	method peso(unaCosa){
		return unaCosa.peso()
	}
	
	method nivelPeligrosidad(unaCosa){
		return unaCosa.nivelPeligrosidad()/2
		
	}
}

