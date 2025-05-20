(:22. Mostrar los libros escritos en años que terminan en “3”:)
(:for $x in /bookstore/book
where ($x/year mod 10)=3
return
$x/title/text():)

for $x in /bookstore/book
where ends-with($x/year/text(),'3')
return
$x/title/text()


(:
for $x in /bookstore/book
where ($x/year mod 10)=3
return
concat($x/title/text(),",",$x/year)
:)

(:for $x in /bookstore/book
where ($x/year mod 10)=3
return
<titulo>{$x/title/text()}</titulo>:)