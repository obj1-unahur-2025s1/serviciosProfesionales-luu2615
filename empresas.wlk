class Empresa{
    var contratados = []
    var property honorarios = 0
    method cuantosEstudiaronEn_(universidad) = contratados.filter({contratado => contratado.universidad() == universidad}).length()
    method profesionalesCaros() = contratados.filter({contratado => contratado.honorarios() > self.honorarios()})
    method universidadesFormadoras(){
        var formadoras = []
        contratados.forEach({contratado => if(formadoras.contains(contratado.universidad()).negate()){formadoras.add(contratado)}})
        return formadoras
    }
    method masBarato() = contratados.map({contratado => contratado.honorarios()}).min()
    method genteAcotada() = contratados.any({contratado => contratado.provincias().length() < 3}) 
}