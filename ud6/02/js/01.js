document.getElementById("Cargar").addEventListener("click", cargar);


function cargar() {
  //Fetch para el fichero .json
// Se usa fetch() para hacer una solicitud HTTP y obtener el archivo 01.json

fetch('lista.json')
// Cuando llega la respuesta del servidor, se ejecuta esta función ->Si la respuesta es OK 
.then(response => {if (!response.ok) throw new Error('Error al cargar el archivo');
  
  // Se convierte la respuesta a formato JSON 
  return response.json();})

// Cuando se ha convertido correctamente en objeto JSON, Buscamos el elemento con id="contenido" en el HTML
.then(datos => {const contenedor = document.getElementById('contenidoJson');
  
  // Mostramos los datos en el HTML, insertando el nombre y la edad
  // Pongo un span y class para poder personalizar el texto.
  //En este caso se hace un bucle para leer todos los participantes...
  //Se cambia ${datos.nombre} por  ${nombre}, porque ahora estamos tratando con el array contenidoJson y no con un solo dato
  datos.Participantes.forEach(contenidoJson => {
      const nombre = contenidoJson.nombre;
      const edad = contenidoJson.edad;
  contenedor.innerHTML += `
  
  <p> 
    <li>Nombre: ${nombre} - Edad: ${edad}</li>
  </p>
`;
});
})
// Si algo sale mal en cualquiera de los pasos anteriores, Se mostraría  el error en la consola
.catch(error => {console.error('Error al cargar el JSON:', error); });

}

