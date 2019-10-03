class Dependencia {
	var flota = []	
	var property cantidadDeEmpleados
	
	method agregarAFlota(vehiculo) { flota.add(vehiculo) }
	
	method quitarDeFlota(vehiculo) { flota.remove(vehiculo) }
	
	method pesoTotalFlota() { return flota.sum({ veh => veh.peso() }) }
	
	method estaBienEquipada() { 
		return flota.size() >= 3 and flota.all({ veh => veh.velocidadMaxima() >= 100 })
	}
	
	method capacidadTotalEnColor(color) {
		return flota.filter({ veh => veh.color() == color }).sum({ veh => veh.capacidad() })
	}
	
	method capacidadTotalEnColor_variante(color) {
		return self.vehiculosDeColor(color).sum({ veh => veh.capacidad() })
	}
	
	method vehiculosDeColor(color) {
		return flota.filter({ veh => veh.color() == color })
	}
	
	method colorDelRodadoMasRapido() {
		return flota.max({ veh => veh.velocidadMaxima() }).color()
	}
	
	method capacidadFaltante() {
		return cantidadDeEmpleados - self.capacidadFlota()
	}
	
	method capacidadFlota() { 
		return flota.sum({ veh => veh.capacidad() })
	}
	
	method esGrande() {
		return cantidadDeEmpleados >= 40 and flota.size() >= 5
	}
}
