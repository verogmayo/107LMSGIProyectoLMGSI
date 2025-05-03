
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
  // Cuando llega la respuesta del servidor, se ejecuta esta función ->Si la respuesta es OK 
  .then(response => {if (!response.ok) throw new Error('Error al cargar el archivo');
    
    // Se convierte la respuesta a formato xml
    return response.text();})
  .then(texto => {
    //Se crea una instancia de DOMParser, que permite convertir una cadena de texto en un documento DOM
    const parser = new DOMParser();
    //Se convierte el texto plano en un documento XML que ya puede ser recorrido como si fuera HTML.
    const xml = parser.parseFromString(texto, "application/xml");

    //Se selecciona todos los nodos <persona> del XML.
    const corredores = xml.querySelectorAll("persona");
    //Contenedor donde se va a insertar en el html
    const contenedor = document.getElementById('contenidoXml');

    //Se recorre cada elemento persona para obtener la información y se añade += a cada bucle en un parafo
    corredores.forEach(corredor => {
      const nombre = corredor.querySelector("nombre").textContent;
      const edad = corredor.querySelector("edad").textContent;
      contenedor.innerHTML += `<p> 
      <span class="etiqueta">Nombre:</span> <span class="valor">${nombre}</span>
      <span class="etiqueta">Edad:</span><span class="valor">${edad} años</span>
    </p>`;
    });
  })
  //Si ocurre algún error (por ejemplo, el archivo pie.xml no existe), lo muestra en la consola del navegador.
  .catch(err => console.error('Error con XML:', err));

  