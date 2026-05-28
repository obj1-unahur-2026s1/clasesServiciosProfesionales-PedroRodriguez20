class ProfesionalVinculado{
    const property universidad 

    method honorarios(){
        return universidad.honorarioRecomendado()
    }
    method enQueProvinciaPuedeTrabajar(){
        return [universidad.provincia()]
    }
}


class ProfesionalAsociado{
    const property universidad 
method honorarios(){
        return 3000
    }
     method enQueProvinciaPuedeTrabajar(){
        return ["Santa Fe","Entre Rios","Corrientes"]
    }
}


class ProfesionalLibre{
    const property universidad 
    var property honorarios
    const property enQueProvinciaPuedeTrabajar=[]
    method agregarProvincia(unaProvincia){
        enQueProvinciaPuedeTrabajar.add(unaProvincia)
    }

}