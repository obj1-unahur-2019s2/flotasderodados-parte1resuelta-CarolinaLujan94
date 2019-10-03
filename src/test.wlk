import dependencias.*
import vehiculos.*
import pedidos.*


describe "Flota de rodados" {
	const cachito = new ChevroletCorsa()
	const pedido = new Pedido(
		distanciaARecorrer = 960,
		tiempoMaximo = 8,
		contidadPasajeros = 4,
		coloresIncompatibles = #{azul, negro} 
		)
		
	test "velocidad requerida" {
		assert.equals(120, pedido.velocidadRequerida())
	} 
	
	test "cachito puede satisfacer" {
		assert.that(pedido.puedeSerSatisfecho(cachito))
	}
	
	test "cachito no puede satisfacer si se agrega el rojo" {
		pedido.colores
		assert.
	}
		
}
