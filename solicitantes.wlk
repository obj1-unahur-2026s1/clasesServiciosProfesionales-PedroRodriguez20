import profesionales.*
import universidades.*

class Persona{
const provincia

method provincia(){
    return [provincia]
}
method puedeSerAtendidoPor(unProfesional){
    return unProfesional.enQueProvinciaPuedeTrabajar().contains(self.provincia())
}


}
class Institucion{
const universidadesConocidas=[]
const provincia
method puedeSerAtendidoPor(unProfesional){
    return universidadesConocidas.contains(unProfesional.universidad())
}


method provincia(){
    return [provincia]
}
}
class Club{
const provinciasDondeEsta=[]
method agregarProvincia(unaProvincia){
    provinciasDondeEsta.add(unaProvincia)
}

method puedeSerAtendidoPor(unProfesional){
    return !unProfesional.enQueProvinciaPuedeTrabajar().asSet().intersection(provinciasDondeEsta.asSet()).isEmpty()
}

method provincia(){
    return provinciasDondeEsta
}


}


