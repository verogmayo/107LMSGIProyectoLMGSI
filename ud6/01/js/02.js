
//Fetch para el fichero .json - Carrera Ciclista
// Se usa fetch() para hacer una solicitud HTTP y obtener el archivo 01.json
fetch('ciclistas.json')
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
      <span class="etiqueta">Nombre:</span> <span class="valor">${nombre}</span>
      
      <span class="etiqueta">Edad:</span><span class="valor">${edad}</span>
    </p>
  `;
  });
})
  // Si algo sale mal en cualquiera de los pasos anteriores, Se mostraría  el error en la consola
  .catch(error => {console.error('Error al cargar el JSON:', error); });


  //Fetch para  fichero.xml - Carrera a pie
  fetch('pie.xml')
  .then(res => res.text())
  .then(texto => {
    const parser = new DOMParser();
    const xml = parser.parseFromString(texto, "application/xml");

    const corredores = xml.querySelectorAll("persona");
    const contenedor = document.getElementById('contenidoXml');

    corredores.forEach(corredor => {
      const nombre = corredor.querySelector("nombre").textContent;
      const edad = corredor.querySelector("edad").textContent;
      contenedor.innerHTML += `<p> 
      <span class="etiqueta">Nombre:</span> <span class="valor">${nombre}</span>
      <span class="etiqueta">Edad:</span><span class="valor">${edad} años</span>
    </p>`;
    });
  })
  .catch(err => console.error('Error con XML:', err));

  