object pepita {
	var energia = 100

	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method estaFeliz() {
		return energia <= 500 && energia >= 1000
	}

	method cuantoQuiereVolar(){

		var kilometrosBase = energia / 5

		var kilometrosTotales = kilometrosBase

		if(energia >= 300 && energia <= 400){
			kilometrosTotales= kilometrosBase+10
		}
		if(energia % 20 == 0){
			kilometrosTotales = kilometrosTotales + 15
		}
		return kilometrosTotales
	}

	method salirAComer(){
		vola(5)
		come(alpiste)
		vola(5)
	}

	method haceLoQueQuieras(){
		if(estaFeliz()){
			vola(8)
		}
		if(estaCansada()){
			come(alpiste)
		}
	}
}

object mijo {
	var seco = true

	method mojarse(){
		if(seco){
          seco = false
		}
	}

	method secarse(){
		if(seco==false){
			seco = true
		}
	}

method energiaQueOtorga() { 
	if(seco){
		return 20
	}else{
		return 15
	}

}

object canelones{
	var energiaBase = 20
	var salsa = false
	var queso = false

method ponerSalsa(){
	if(salsa==false){
		salsa = true
	}
}
method sacarSalsa(){
	if(salsa){
		salsa = false
	}
}
method ponerQueso(){
	if(queso==false){
		queso = true
	}
}
method sacarQueso(){
	if(queso){
		queso = false
	}
}


method energiaQueOtorga() { 
	if(queso){
		energiaBase = energiaBase + 7

	}
	if(salsa){
		energiaBase = energiaBase + 5
	}

	return energiaBase
}
	

}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}

object roque {
	
	method entrenar(ave){
		ave.vola(10)
		ave.come(alpiste)
		ave.vola(5)
		ave.haceLoQueQuieras()
	}
}