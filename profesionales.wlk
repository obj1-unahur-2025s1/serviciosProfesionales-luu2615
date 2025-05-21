import universidades.*
class Profesional {
  var property universidad
  var property honorarios
  var provincias
  method agregarProvincia(provincia){
    provincias.add(provincia)
  }
  method provincias() = provincias
}
class ProfesionalVinculado inherits Profesional {
  override method honorarios() = universidad.honorariosRecomendados()
}
class ProfesionalLitoral inherits Profesional{
  override method honorarios() = 3000
  override method provincias() = ["Entre Ríos","Santa Fe","Corrientes"]
}
class ProfesionalLibre inherits Profesional{
  
}