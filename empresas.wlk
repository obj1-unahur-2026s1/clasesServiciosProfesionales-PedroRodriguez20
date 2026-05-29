import universidades.*
import profesionales.*
class Empresa{
    var property honorarioDeReferencia
const property listaDeProfesionales=[]

method contratarProfesional(unProfesional){
    listaDeProfesionales.add(unProfesional)
}
method cuantoProfesionalesEstudiaronEn(unaUniversidad){
    return listaDeProfesionales.count({p=>p.universidad()==unaUniversidad})
}
method profesionalesCaros(){
    return listaDeProfesionales.filter({p=>p.honorarios()>honorarioDeReferencia})
}
method universidadesFormadoras(){
    return listaDeProfesionales.map({p=>p.universidad()}).asSet()
}
method profesionalMasBarato(){
    return listaDeProfesionales.min({p=>p.honorarios()})
}
method esDeGenteAcotada(){
    return listaDeProfesionales.all({p=>p.enQueProvinciaPuedeTrabajar().size()<=3})
}
method puedeSatisfacerA(unSolicitante){
    return listaDeProfesionales.any({p=>unSolicitante.puedeSerAtendidoPor(p)})
}
}