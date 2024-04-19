object olivia{
	var gradoDeConcentracion = 6
	
	method gradoDeConcentracion() = gradoDeConcentracion
	
	method recibirMasaje(){
		gradoDeConcentracion +=3		
	} 
	
	method discutir(){
		gradoDeConcentracion -=1
	}
	
	method banioDeVapor(){	
	}
}

object bruno{
	var esFeliz = true
	var tieneSed = false
	var peso = 55000
	
	method esFeliz() = esFeliz
	method tieneSed() = tieneSed
	method peso() = peso
	
	method recibirMasaje(){
		esFeliz = true
	}
	
	method banioDeVapor() {
		peso -= 500
		tieneSed = true
	}
	
	method tomarAgua() {
		tieneSed = false
	}
	
	method comerFideos() {
		peso += 250
		tieneSed = true
	}
	
	method correr(){
		peso -= 300
	}
	
	method verNoticiero() {
		esFeliz = false
	}
	
	method estaPerfecto(){
		return esFeliz && !tieneSed && peso.between(50000,70000)
	}
	
	method mediodiaEnCasa(){
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
	}
}

object ramiro{
	var estaContracturado = 0
	var grasaPiel = true
	
	method estaContracturado() = estaContracturado
	
	method recibirMasaje(){
		estaContracturado = 0.max(estaContracturado-2)
	}
	
	method banioDeVapor() {
		grasaPiel = false
	}
	
	method comerBigMac(){
		grasaPiel = true
	}
	
	method bajarFosa(){
		grasaPiel = true
		estaContracturado +=1
	}
	
	method jugarPaddle() {
		estaContracturado += 3
	}
	
	method diaDeTrabajo(){
		self.bajarFosa()
		self.comerBigMac()
		self.bajarFosa()
	}
}