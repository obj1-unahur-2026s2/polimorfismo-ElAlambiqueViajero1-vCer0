object luke {
    var vehiculo = alambiqueVeloz
    var ultimoRecuerdo =""
    var lugaresVisitados = 0

    method vehiculo() {
      return vehiculo
    }
    method cambiarDeVehiculo(nuevoVehiculo) {
      vehiculo = nuevoVehiculo
    }

    method viajar(unaCiudad) {
        if (unaCiudad.puedeSerVisitada()){
            vehiculo.realizarViaje()
            ultimoRecuerdo = unaCiudad.recuerdo()
            lugaresVisitados+=1
        }
    }

    method recuerdo() {
        return ultimoRecuerdo
    }

    method cantidadDeLugaresVisitados() {
        return lugaresVisitados
    }
}


// Recuerdos 

object paris {
  
    method recuerdo() {
      return "llavero torre eiffel"
    }

    method puedeSerVisitada(){
      return luke.vehiculo().combustible()>=10
    }

}

object buenosAires {

    var recuerdo = "mate con yerba"
    method puebloEligePresidenteBueno() {
        recuerdo = "mate con yerba"
    }
    method puebloEligePresidenteMalo() {
        recuerdo = "mate sin yerba"
    }
    method recuerdo() {
      return recuerdo
    }
    method puedeSerVisitada(){
      return luke.vehiculo().esRapido()
    }
}

object bagdad {

    var recuerdo = "bidon de crudo"
    
    method cambiarRecuerdo(nuevoRecuerdo) {
      recuerdo = nuevoRecuerdo
    } 
    method puedeSerVisitada(){
      return true
    }

    method recuerdo() {
      return recuerdo
    }
}

object lasVegas {
    var ciudadHomenajeada = paris

    method cambiarCiudadHomenajeada(unaCiudad) {
        ciudadHomenajeada = unaCiudad
    }

    method recuerdo() {
      return ciudadHomenajeada.recuerdo()
    }
    method puedeSerVisitada(){
      return ciudadHomenajeada.puedeSerVisitada()
    }

}

// Vehiculos

object alambiqueVeloz {
    var combustible = 50

    method combustible() {
      return combustible
    }

    method cargarTanque() {
      combustible = 50
    }

    method esRapido() {
      return true
    }

    method realizarViaje() {
      combustible = ((combustible-10).min(50)).max(0)
    }
}

object superChatarraEspecial {
    var caniones = false

    method combustible() {
      if (caniones){
        return 50
      }
      else{
        return 80
      }
    }
    method realizarViaje() {
      caniones = !caniones
    }
    method esRapido() {
      return false
    }
}

object antiguallaBlindada {
    var cantidadDeGangsters = 5
    
    method combustible() {
      return 50
    }

    method cambiarCantidadDeGangsters(unaCantidad) {
        if (unaCantidad>=1){
            cantidadDeGangsters = unaCantidad
        }
    }

    method esRapido() {
      return cantidadDeGangsters<7
    }

    method realizarViaje() {}

    method cantidadDeGangsters() {
      return cantidadDeGangsters
    }

}

// Vehiculos nuevos

object delorean {
    var combustible = 100
    var viajesEnElTiempo = 0

    method combustible() {
        return combustible
    }

    method esRapido() {
        return true
    }

    method realizarViaje() {
        combustible -= 20
        viajesEnElTiempo += 1
    }

    method cargarTanque() {
        combustible = 100
    }

    method cantidadDeViajesEnElTiempo() {
        return viajesEnElTiempo
    }
}
object kitt {
    var modoTurbo = false
    var combustible = 60

    method combustible() {
        return combustible
    }

    method esRapido() {
        return modoTurbo
    }

    method realizarViaje() {
        modoTurbo = !modoTurbo
        combustible -= 10
    }

    method activarTurbo() {
        modoTurbo = true
    }

    method hablar() {
        return "Buenas noches, Michael. ¿A donde desea viajar?"
    }
}

// Ciudad Nueva
object hillValley {
    method recuerdo() {
        return "bomba atomica"
    }

    method puedeSerVisitada() {
        return luke.vehiculo().esRapido() &&
            luke.vehiculo().combustible() >= 20
    }
}