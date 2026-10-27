import PDEPEntreteinment.entradas.Entrada
import PDEPEntreteinment.errores.ErrorDeCompra


class Asistente{
    var property tipoDeAbono
    var property descuento
    const property historialDeEntradas = []
    var property dineroDisp

    method puedecomprar() = dineroDisp>0
    //manejo de errores
    method comprarEntrada(entrada){
        if(self.puedecomprar()){
            self.dineroDisp(self.dineroDisp()-tipoDeAbono.precioFinalConDesc(entrada,self))
            historialDeEntradas.add(entrada)


        }
        else{
             throw new ErrorDeCompra(message = "Saldo Negativo, no es posible realizar la compra")
        }
    }
    method entradasAñoAnterior(){
        const hoy = new Date()
        return historialDeEntradas.filter({
            entrada=>
            entrada.fechaEnlaQueToca().year() ==  hoy.year()-1
        })
    }
    method entradasDeBandas(){
        return historialDeEntradas.map({
            entrada=>
            entrada.banda().nombreDeBanda()
        }).asSet()
    }
}