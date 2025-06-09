(:5. Nombre de los cursos que no han finalizado:)
(:for $curso in collection('academia')/curso
where $curso/fin>current-data()
return $curso/:)






(:for $curso in collection('academia')//curso
let $fechaTokens := tokenize($curso/fin, "/")
let $fecha := xs:date(concat($fechaTokens[3], "-", 
                                format-number(xs:integer($fechaTokens[2]), "00"), "-", 
                                format-number(xs:integer($fechaTokens[1]), "00")))
where $fecha > current-date()
return data($curso/nombre):)



