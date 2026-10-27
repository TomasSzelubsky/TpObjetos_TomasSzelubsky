import PDEPEntreteinment.productora.productora
import PDEPEntreteinment.entradas.Entrada

object fan {
    method precioFinalConDesc(entrada,asistente) { 
    return entrada.precioFinal()
    
    }

}


object vip{
    method precioFinalConDesc(entrada,asistente) {
         return entrada.precioFinal()*(1-asistente.descuento())    
    }
}