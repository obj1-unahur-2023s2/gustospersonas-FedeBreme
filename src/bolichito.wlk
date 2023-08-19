//bolichito

import colores.*
import materiales.*
import objetos.*
import personas.*

object bolichito {
	var objetoMostrador
	var objetoVidriera
	
	method objetoViriera() {
		return objetoVidriera
	}
	
	method objetoMostrador() {
		return objetoMostrador
	}
	
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
