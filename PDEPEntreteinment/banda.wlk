class Banda{
    const property nombreDeBanda
    var  valorEstandarCanon = 1000000//precio min por el que tocan
    method canon() = valorEstandarCanon
    method presupuesto()= self.canon() + self.precioExtra()
    method  precioExtra()
    method popularidad()
    //metodos Abstractos

}

class BandaDeRock inherits Banda{
    var cantidadSolosGuitarra
    override method precioExtra()=10000
    override method popularidad() = 100*cantidadSolosGuitarra
    
}

class BandaDeTrap inherits Banda{
    const tienenHielo
    override method canon(){
        return  self.popularidad()*valorEstandarCanon

    }
    override method precioExtra()=0
    override method popularidad(){
        if(tienenHielo){
        return 1000
        }
        else{
            return 0
        }
    }
}

class BandaIndie inherits Banda{
    const instrumentos //lista de instrumentos de la banda
    override method precioExtra()=500*instrumentos.size()
    override method popularidad() = nombreDeBanda.size()*3.14
    
}
