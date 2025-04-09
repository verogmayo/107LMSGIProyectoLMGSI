a. Lista los álbumes que contienen la palabra Vida y con más de 5.000.000 de reproducciones. 
/lfm/topalbums/album[playcount > 5000000 and name[contains(., 'Vida')]]/name
<!-- Al hacer está conulta no sale nada porque no hay ningún titulo que contenga vida,
 y tampoco hay ninguno que tenga más de reproducciones así que he probado con este y funciona.
 Lista los álbumes que contienen la palabra Sabina y con más de 100000 de reproducciones.
 -- /lfm/topalbums/album[playcount > 100000 and name[contains(., 'Sabina')]]/name 
 Lista de lostitulos de los  albumes que contengan la palabra Sabina
 /lfm/topalbums/album/name[contains(., 'Sabina')/text()]
 -->



b. Número de álbumes publicados por Joaquin Sabina. 
<!-- el resultado sale en la parte de arriba no sale donde el texto... 
Todos los labumes del xml son de Joaquin   -->
count(/lfm/topalbums/album[artist/name='Joaquín Sabina'])

<!--Nombre de los albumes cuyo artista sea Joaquin sabina
/lfm/topalbums/album[artist/name='Joaquín Sabina']/name

Nombre de los albumes que tengan mas de un artista
/lfm/topalbums/album[count(artist) > 1]/name

 -->



