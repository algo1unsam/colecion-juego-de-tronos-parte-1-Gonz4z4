object daenerys{
    const property artefactos = #{}
    var capacidad= 2
    const historia= []

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
    method posesiones(artefacto) {
        return artefactos + castillo.artefactos() 
    }
    method posee(elemento) = self.posesiones().contain(elemento)
    method historia(artefacto){
        historia.add(artefacto)
        return historia
        
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