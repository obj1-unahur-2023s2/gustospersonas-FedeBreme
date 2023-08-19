// objetos

import colores.*
import materiales.*

object remera {
	method color() {
		return rojo
	}
	
	method material() {
		return lino
	}
	
	method peso() {
		return 800
	}
}

object pelota {
	method color() {
		return pardo
	}
	
	method material() {
		return cuero
	}
	
	method peso() {
		return 1300
	}
}

object biblioteca {
	method color() {
		return verde
	}
	
	method material() {
		return madera
	}
	
	method peso() {
		return 8000
	}
}

object munieco {
	var peso
	
	method color() {
		return celeste
	}
	
	method material() {
		return vidrio
	}
	
	method peso() {
		return peso
	}
	
	method setPeso(pesoNuevo) {
		peso = pesoNuevo
	}
}

object placa {
	var peso
	var color
	
	method color() {
		return color
	}
	
	method setColor(colorNuevo){
		color = colorNuevo
	}
	
	method material() {
		return cobre
	}
	
	method peso() {
		return peso
	}
	
	method setPeso(pesoNuevo) {
		peso = pesoNuevo
	}
}

object arito {
	method color() {
		return celeste
	}
	
	method material() {
		return cobre
	}
	
	method peso() {
		return 180
	}
}

object banquito {
	var color = naranja
	
	method color() {
		return color
	}
	
	method setColor(nuevoColor) {
		color = nuevoColor
	}
	
	method material() {
		return madera
	}
	
	method peso() {
		return 1700
	}
}

object cajita {
	var objetoDentro
	
	method color() {
		return rojo
	}
	
	method material() {
		return cobre
	}
	
	method peso() {
		return 400 + objetoDentro.peso()
	}
	
	method objetoDentro() {
		return objetoDentro
	}
	
	method setObjetoDentro(objeto) {
		objetoDentro = objeto
	}
}
