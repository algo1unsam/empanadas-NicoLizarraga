object gimenez {

	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000
	var sueldo = 15000
	var totalCobrado = 0

	method sueldo() {
		return 15000
	}

	method sueldo(nuevoValor) {
		sueldo = nuevoValor
	}

	method cobrarSueldo() {
		totalCobrado += sueldo
	}

	method totalCobrado() {
		return totalCobrado
	}

}

object baigorria {

	var empanadasVendidas = 1000 // BAIGORRIA ARRANCA CON $15MIL DE SUELDO INICIAL
	var totalDinero = 0
	var totalDeuda = 0
	var sueldo

	// este método está raro
	// para empezar, es un mensaje de órden o de consulta? pareciera ser de consulta, pero que a su vez
	// realiza una acción, esto es peligroso ya que si yo quiero consultar el sueldo(), este se modifica!
	// A lo mejor hay que usar siempre sueldo() que haga empanadasVendidas*15, y la variable no usarla para nada, sacarla.
	// Cuando hay una variable y en método getter en su nombre, queda "confuso", hace al programa mas inestable
	// por ejemplo si me equivoco y en lugar de sueldo hago sueldo(), cambia totalmente
	// para reflexionar
	method sueldo() {
		sueldo = empanadasVendidas * 15
		return sueldo
	}

	// que son las empanadas extras? no puede cambiar el valor de empanadasVendidas y ya?
	method sueldoConEmpanadasExtras(cantidad) {
		sueldo = (empanadasVendidas + cantidad) * 15
	}

	// acá por ejempo, vos usas sueldo, y estas seguro que esta variable fue correctamente actualiza 
	// con el valor que se calcula en sueldo()
	method cobrarSueldo() {
		totalDinero += sueldo
		self.pagarDeuda()
	}

	method gastar(cuanto) {
		self.totDeuda(cuanto)
	}

	method totDeuda() {
		return totalDeuda
	}

	method totDeuda(nuevaDeuda) {
		totalDeuda += nuevaDeuda
	}

	method pagarDeuda() { // USAR IF (?????????
		if (totalDinero > totalDeuda) {
			totalDinero -= totalDeuda
			totalDeuda = 0
		} else if (totalDinero < totalDeuda) {
			totalDeuda -= totalDinero
			totalDinero = 0
		}
	}

	method totalDinero() {
		return totalDinero
	}

}

object galvan {

	var dinero = 300000

	method dinero() {
		return dinero
	}

	method pagarA(empleado) {
		dinero -= empleado.sueldo()
	}

}

