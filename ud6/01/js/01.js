

// Se usa fetch() para hacer una solicitud HTTP y obtener el archivo 01.json
fetch('01.json')
  // Cuando llega la respuesta del servidor, se ejecuta esta función
  .then(response => {
    // Si la respuesta es OK
    if (!response.ok) throw new Error('Error al cargar el archivo');
    
    // Se convierte la respuesta a formato JSON 
    return response.json();
  })
  // Cuando se ha convertido correctamente en objeto JSON...
  .then(datos => {
    // Buscamos el elemento con id="contenidoJson" en el HTML
    const contenedor = document.getElementById('contenidoJson');
    
    // Se muestran los datos en el HTML, insertando el nombre y la edad
    // Pongo un span y class para poder personalizar el texto.
    contenedor.innerHTML = `
    <p> 
      <span class="etiqueta">Nombre:</span> <span class="valor">${datos.nombre}</span>
      <span class="etiqueta">Edad:</span><span class="valor">${datos.edad}</span>
    </p>
  `;
  })
  // Si algo sale mal en cualquiera de los pasos anteriores...
  .catch(error => {
    // Se mostraría  el error en la consola 
    console.error('Error al cargar el JSON:', error);
  });

