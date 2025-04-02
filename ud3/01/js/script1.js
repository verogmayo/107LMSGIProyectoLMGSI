document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("boton1").addEventListener("click", saludar);
    document.getElementById("boton2").addEventListener("click", cambiarColor);
    document.getElementById("boton3").addEventListener("click", cambiarParrafos);

    // Variables para alternar los cambios
    let ModoOscuro = false;
    let ParrafosModificados = false;

    // Elementos del DOM (usando const para evitar conflictos, porque sino funciona)
    const titulo = document.getElementById("titulo");
    const parrafos = document.getElementsByClassName("parrafo");
    const cuerpo = document.getElementById("cuerpo");

    
    function saludar() {
        alert("Hola, buenos días!!!");
    }

    function cambiarColor() {
        if (!ModoOscuro) {
            
            cuerpo.style.backgroundColor = "black";
            titulo.style.color = "white";
            titulo.style.backgroundColor = "black";
        } else {
            
            cuerpo.style.backgroundColor = "#f4f4f4";
            titulo.style.color = ""; 
            titulo.style.backgroundColor = "#f4f4f4"; 
        }
        ModoOscuro = !ModoOscuro; 
    }

    function cambiarParrafos() {
        Array.from(parrafos).forEach(parrafo => {
            if (!ParrafosModificados) {
                parrafo.style.fontSize = "20px";
                parrafo.style.letterSpacing = "2px";
                parrafo.style.transform = "rotate(1deg)";
                parrafo.style.fontWeight = "bold";
            } else {
                parrafo.style.fontSize = "18px"; 
                parrafo.style.letterSpacing = ""; 
                parrafo.style.transform = ""; 
                parrafo.style.fontWeight = ""; 
            }
        });
        ParrafosModificados = !ParrafosModificados; 
    }
});