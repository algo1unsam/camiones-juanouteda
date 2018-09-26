import transportes.*
import cosas.*

object deposito {

	var cosasDeposito = []

	// TODO por el addAll, unaCosa debería ser una coleccion
	// de ser así (lo cuál es correctísimo), debería tener un nombre acorde!
	method recibirCosas(unaCosa) {
		cosasDeposito.addAll(unaCosa)
	}

	method llenarCamion() {
		cosasDeposito.forEach({ unaCosa =>
			camion.cargar(unaCosa)
			cosasDeposito.remove(unaCosa)
		})
	}

	method sacarTodo() {
		cosasDeposito.removeAll(cosasDeposito)
	}

	method inventarioContenes(unaCosa) {
		return cosasDeposito.contains(unaCosa)
	}

	// TODO ok, acá este código queda totalmente repetido con llenarCambion
	// para evitar esto, el transporte debería llegar como parámetro
	// y entonces usas siempre este transporte que te llega por parámtero que puede ser
	// uno u otro! (ya que por otro lado, si o si, deberían ser polimórficos)
	method llenarMotoneta() {
		cosasDeposito.forEach({ unaCosa =>
			motoneta.cargar(unaCosa)
			cosasDeposito.remove(unaCosa)
		})
	}

}

