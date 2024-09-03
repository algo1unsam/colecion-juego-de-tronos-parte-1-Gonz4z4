object daenerys{
    const property artefactos = #{}
    var capacidad= 2
    
    method encontrar(artefacto){
        if (artefactos.size()<capacidad){
            artefactos.add(artefacto)
        }
    }
    method artefactos(){
        return artefactos
    }
    method aumentoCapacidad(){
        capacidad+=1
    }
    method volverACasa() {
        castillo.depositar()
        artefactos.clear()
    }
    method capacidad(){
        return capacidad
    } 
    method posee() {
        const posesiones =#{}
        posesiones.addAll(castillo.artefactos())
        posesiones.addAll(artefactos())
        return posesiones
    }
    method historial(){
        const historial= []
        historial.addAll(castillo.artefactos())
        historial.addAll(artefactos)
        return historial
        
    }

}
object castillo{
    const property artefactos = #{}
    method depositar() {
        artefactos.addAll(daenerys.artefactos())
    }
    method artefactos(){
        return artefactos
    }
}

object espada{}
object libro{}
object collar{}
object armadura{}