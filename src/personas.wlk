//personas 

import colores.*
import materiales.*

object rosa {
	method leGusto(objeto){
		return objeto.peso() <= 2000
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
		return objeto.color().esFuerte() or objeto.peso().between(1200,1800)
	}
}
