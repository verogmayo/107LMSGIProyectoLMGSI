// para que js pueda acceder a las carpetas para poder generar los navs
// y la tabla del index.html, hay que instalar node.js.
// Si no se instala node.js, js no tiene permiso para acceder a las carpetas

//Esto permite trabajar con el sistema de archivos (fs) y construir rutas 
// compatibles con cualquier sistema operativo (path).
const fs = require("fs");
const path = require("path");

//define dónde están los archivos .xq, los resultados y las imágenes.
const srcDir = path.join(__dirname, '..', 'src');
const targetDir = path.join(__dirname, '..', 'target');
const imagenesDir = path.join(__dirname, '..', 'webroot', 'images');
//estas son las extensiones posibles de los resultados 

const posiblesExtensiones = ["xml", "txt", "html"];

let datos = [];
//recorremos todos los archivos de la carpeta src y solo se procesan los que terminan en .xq.
//En este caso solo hay archivo con esta extension.
fs.readdirSync(srcDir).forEach((archivo) => {
  if (archivo.endsWith(".xq")) {
    const nombre = path.basename(archivo, ".xq");

    // Se construye la ruta al archivo de resultado (target/01.xml, etc.). 
    // El primero que existe, se usa.
     let resultado = null;
    for (const ext of posiblesExtensiones) {
      const ruta = path.join(targetDir, `${nombre}.${ext}`);
      if (fs.existsSync(ruta)) {
        resultado = ruta.replace(/\\/g, "/"); // por compatibilidad
        break;
      }
    }


    // Se busca si hay imagen correspondiente
    const imagen = path.join(imagenesDir, `${nombre}.png`);
    const imagenExiste = fs.existsSync(imagen);

    //Se construye el archivo .json
    datos.push({
      nombre,
      src: path.join("src", archivo).replace(/\\/g, "/"),
      resultado: resultado ? resultado.replace(/^.*?target\//, "target/") : null,
      imagen: imagenExiste ? `webroot/images/${nombre}.png` : null,
    });
  }
});

// Guardar los datos como JSON

fs.writeFileSync("datos.json", JSON.stringify(datos, null, 2), "utf-8");

console.log("Archivo datos.json generado correctamente.");

//Despues se ejecuta el js con node
//Se va a la terminal de visual Studio y se ejecuta con esta linea
//node generar-json.js
//y debería de aparecer el atchivo datos.json
