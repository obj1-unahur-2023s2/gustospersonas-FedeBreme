//personas 

object rosa {
	method leGusto(objeto){
		return objeto.peso() < 2000
	}
}

object estefania {
	method leGusto(objeto){
		return objeto.color().esFuerte()
	}
}

object luisa {
	method leGusto(objeto){
		return objeto.brilla()
	}
}

object juan {
	method leGusto(objeto){
		return objeto.color().esFuerte() or (objeto.peso() > 1200 and objeto.peso() < 1800)
	}
}

// colores

object rojo {
	method esFuerte() {
		return true
	}
}

object verde {
	method esFuerte() {
		return true
	}
}

object celeste {
	method esFuerte() {
		return false
	}
}

object pardo {
	method esFuerte() {
		return false
	}
}

object naranja {
	method esFuerte() {
		return true
	}
}

// materiales

object cobre {
	method brilla() {
		return true
	}
}

object vidrio {
	method brilla() {
		return true
	}
}

object lino {
	method brilla() {
		return false
	}
}

object madera {
	method brilla() {
		return false
	}
}

object cuero {
	method brilla() {
		return false
	}
}

// objetos

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

//bolichito

object bolichito {
	var objetoMostrador
	var objetoVidriera
	
	method ponerEnElMostrador(objeto) {
		objetoMostrador = objeto
	}
	
	method ponerEnLaVidriera(objeto) {
		objetoVidriera = objeto
	}
	
	method esBrillante() {
		const objetoMostradorBrilla = true
		const objetoVidrieraBrilla = true
		
		return objetoMostradorBrilla and objetoVidrieraBrilla
	}
	
	method esMonocromatico(){
		return objetoMostrador.color() == objetoVidriera.color()
	}
	
	method estaDesequilibrado() {
		return objetoMostrador.peso() > objetoVidriera.peso()
	}
	
	method tieneAlgoDeColor(color) {
		return (objetoMostrador.color() == color) or (objetoVidriera.color() == color)
	}
	
	method puedeMejorar() {
		return self.estaDesequilibrado() or self.esMonocromatico()
	}
	
	method puedeOfrecerleAlgoA(persona) {
		return (persona.leGusto(objetoMostrador)) or (persona.leGusto(objetoVidriera))
	}
}
