import PDEPEntreteinment.asistentes.*
import PDEPEntreteinment.abono.*

object productora{
    var property impuestoProductora = 100
    //var property  gananciaTotal = 0
    
    const property asistentes = #{}
    const property bandas = #{}

    method bonificarAsistentesVip() {
        //filtrelista de asistenes x is on vip y foreach de esos que le sume 0.01 de descuento
        self.asistentesVip().forEach({
            asistenteVip=>
            asistenteVip.descuento(asistenteVip.descuento()+0.01)
        })
    }
    method asistentesVip(){
        return asistentes.filter({
            asistente=>
            asistente.tipoDeAbono() == vip

        })
    }
    method entradasVendidas(){
        
        return asistentes.map({
            asistente=>
            asistente.historialDeEntradas().size()
            
        }).sum()
    }
    method gananciaTotal()=self.ventaEntradas() - self.presupuestoTotalBandas()
    method ventaEntradas(){
        return asistentes.map({
            asistente=>
            asistente.historialDeEntradas().map({
                entrada=>
                entrada.precioFinal()
            }).sum()  
        }).sum()
        

    }
    method presupuestoTotalBandas(){
        return bandas.map({
            banda=>
            banda.presupuesto()
        }).sum()
    }
    method entradasVendidasBanda(banda) {
    return asistentes.map({
        asistente =>
        asistente.historialDeEntradas().filter({
            entrada => 
            entrada.banda()==banda 
        }).size()
    }).sum() 
}

method bandaMasPopular(){
    return bandas.max({banda=>self.entradasVendidasBanda(banda)})
  

}
}




