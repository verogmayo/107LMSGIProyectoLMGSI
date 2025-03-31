var titulo=document.getElementById("titulo");
var parrafo = document.getElementsByClassName("parrafo");
var cuerpo = document.getElementById("cuerpo");
var piePagina=document.getElementById("pie");
var pPie=document.getElementById("pPie");
var nombre=document.getElementById("nombre");
var boton=document.getElementById("boton");


titulo.innerText="UD3.1 DOCUMENT OBJET MODEL";
titulo.style.backgroundColor="#f4f4f4";
titulo.style.padding="20px"
cuerpo.style.backgroundColor="#f4f4f4"
cuerpo.style.textAlign="center";
for(var i=0;i<parrafo.length;i++){
    parrafo[i].style.fontSize="18px"
    };

for(var i=0;i<parrafo.length;i++){
   parrafo[i].style.padding="10px"
  };

for(var i=0;i<parrafo.length;i++){
    parrafo[i].style.margin="auto"
    parrafo[i].style.width="60%"
};
for(var i=0;i<parrafo.length;i++){
    parrafo[i].style.borderLeft="solid 5px"
    parrafo[i].style.borderRadius="5px"
};
for(var i=0;i<parrafo.length;i++){
    parrafo[i].style.marginTop="10px"
};

parrafo[0].style.color="#e74c3c";
parrafo[0].style.backgroundColor="#ffe6e6";
parrafo[0].style.borderColor="#c0392b";

parrafo[1].style.color="#2ecc71";
parrafo[1].style.backgroundColor="#eaffea";
parrafo[1].style.borderColor="#27ea60";

parrafo[2].style.color="#3498db";
parrafo[2].style.backgroundColor="#e6f2ff";
parrafo[2].style.borderColor="#2980b9";

piePagina.style.backgroundColor="#222222"
piePagina.style.padding="5px"
pPie.style.color="white"
nombre.style.color="grey"
nombre.style.textDecoration="none"
boton.style.margin="10px";



function saludar() {
    alert("Hola, buenos días!!!");
  }

function cambiarColor(){
    cuerpo.style.backgroundColor="black";
    titulo.style.color="white";
    titulo.style.backgroundColor="black";
}

function cambiarParrafos(){
    for (var i = 0; i < parrafo.length; i++) {
        parrafo[i].style.fontSize="20px";
        parrafo[i].style.letterSpacing="2px";
        parrafo[i].style.rotate="1deg";
        parrafo[i].style.fontWeight="bold";
    }
    
}

