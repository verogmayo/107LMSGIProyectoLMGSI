for $curso in collection('academia')//curso
where $curso/@id=1
return replace value of node $curso/fin with "1/12/2025"