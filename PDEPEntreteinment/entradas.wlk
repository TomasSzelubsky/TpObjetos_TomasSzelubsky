import PDEPEntreteinment.productora.productora
class Entrada{
    const property  banda 
    const property fechaEnlaQueToca
    const precioBase = 1000
    
    
    

    method precioFinal() = precioBase + productora.impuestoProductora()

}

