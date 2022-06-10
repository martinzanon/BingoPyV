
const IDIOMAS_PREFERIDOS = ["es-MX"];

$(document).ready(function () {

    
    

});

document.addEventListener("DOMContentLoaded", () => {

    const $voces = document.querySelector("#voces");
    let posibleIndice = 0, vocesDisponibles = [];

    // Función que pone las voces dentro del select
    const cargarVoces = () => {
        if (vocesDisponibles.length > 0) {
            console.log("No se cargan las voces porque ya existen: ", vocesDisponibles);
            return;
        }
        vocesDisponibles = speechSynthesis.getVoices();
        console.log({ vocesDisponibles })
        posibleIndice = vocesDisponibles.findIndex(voz => IDIOMAS_PREFERIDOS.includes(voz.lang));
        if (posibleIndice === -1) posibleIndice = 0;
        vocesDisponibles.forEach((voz, a) => {
            const opcion = document.createElement("option");
            opcion.value = a;
            opcion.innerHTML = voz.name;
            opcion.selected = a === posibleIndice;
            $voces.appendChild(opcion);
        });
    };

    // Si no existe la API, lo indicamos
    if (!'speechSynthesis' in window) return alert("Lo siento, tu navegador no soporta speechSynthesis");

    // No preguntes por qué pongo esto que se ejecuta dos veces
    // en determinados casos, solo así funciona en algunos casos
    cargarVoces();

    Bingo.objVoz = new SpeechSynthesisUtterance();
    Bingo.objVoz.voice = vocesDisponibles[76]
    Bingo.objVoz.rate = 1;
    Bingo.objVoz.text.pitch = 1;


    // Si hay evento, entonces lo esperamos
    if ('onvoiceschanged' in speechSynthesis) {
        speechSynthesis.onvoiceschanged = function () {
            cargarVoces();
        };
    }
    // El click del botón. Aquí sucede la magia
    /*$boton.addEventListener("click", () => {
        let textoAEscuchar = $mensaje.value;
        if (!textoAEscuchar) return alert("Escribe el texto");
        let mensaje = new SpeechSynthesisUtterance();
        alert(vocesDisponibles[$voces.value]);
        mensaje.voice = vocesDisponibles[$voces.value];
        mensaje.rate = 1;
        mensaje.text = textoAEscuchar;
        mensaje.pitch = 1;
        // ¡Parla!
        speechSynthesis.speak(mensaje);
    });*/
});

var Bingo = new function () {

    this.estado = 'stop';
    this.SonidoHabilitado = false;
    this.objVoz;  
    

    this.play = function () {

        Bingo.estado = 'play';
        $("#CeldaPlay").attr('class', 'BotonSeleccionado');
        $("#CeldaStop").attr('class', 'Boton');
        $("#CeldaReiniciar").attr('class', 'Boton');
        Bingo.sacarBolilla();
    }

    this.stop = function () {
        Bingo.estado = 'stop';
        $("#CeldaPlay").attr('class', 'Boton');
        $("#CeldaStop").attr('class', 'BotonSeleccionado');
        $("#CeldaReiniciar").attr('class', 'Boton');
    }

    this.reiniciar = function () {
        Bingo.estado = 'stop';
        Bingo.Reset();
        $("#CeldaPlay").attr('class', 'Boton');
        $("#CeldaStop").attr('class', 'Boton');
        $("#CeldaReiniciar").attr('class', 'BotonSeleccionado');
    }

    this.sacarBolilla = function () {

        if (this.estado == 'play') {

            var CantBolillasRestantes = $("#CantRestante").val();
            var Nro = NroAleatorio(1, CantBolillasRestantes);
            var Conta = 0;
            var Celda;


            for (var i = 1; i <= 90; i++) {
                Celda = $("#Celda" + i)
                if (Celda.attr('class') == "Celda") {
                    Conta += 1;
                    if (Conta == Nro) {

                        Celda.attr('class', 'CeldaSeleccionada');
                        CantBolillasRestantes = CantBolillasRestantes - 1;
                        $("#CantRestante").val(CantBolillasRestantes);
                        $("#CeldaUltimos5").text($("#CeldaUltimos4").text());
                        $("#CeldaUltimos4").text($("#CeldaUltimos3").text());
                        $("#CeldaUltimos3").text($("#CeldaUltimos2").text());
                        $("#CeldaUltimos2").text($("#CeldaUltimos1").text());
                        $("#CeldaUltimos1").text($("#CeldaActual").text());
                        $("#CeldaActual").text(Celda.text());
                        console.log('bolilla', Celda.text())

                        if (Bingo.SonidoHabilitado) {
                            Bingo.CantarBolilla(Celda.text())
                        }
                        

                        break
                    }
                }
            }

            if (CantBolillasRestantes > 0) {
                var Cant = $("#CantSegundos").text() * 1000;
                setTimeout('Bingo.sacarBolilla();', Cant)
            }


        }

    }

    this.Reset = function () {
        $("#CantRestante").val("91")
        for (var i = 1; i <= 90; i++) {
            Celda = $("#Celda" + i)
            Celda.attr('class', 'Celda');
        }
        for (var i = 1; i <= 5; i++) {
            $("#CeldaUltimos" + i).html('&nbsp;');
        }
        $("#CeldaActual").html('&nbsp;');
    }

    this.sonido = function () {

        if (Bingo.SonidoHabilitado) {
            $("#CeldaSonido").attr('class', 'Boton');
            Bingo.SonidoHabilitado=false;
        } else {
            $("#CeldaSonido").attr('class', 'BotonSeleccionado');
            Bingo.SonidoHabilitado = true;
        }
        
    } 

    this.CantarBolilla = function (Bolilla) {
        /*var DescBolilla = Bolilla.toString();
        if (DescBolilla.length == 1) { DescBolilla = ', 0, ' + DescBolilla } else {
            DescBolilla = ', ' + Bolilla.toString().substring(0, 1) + ', ' + Bolilla.toString().substring(1, 1);
        }  */   
        //alert(DescBolilla)
        Bingo.objVoz.text = Bolilla + DescBolilla;        
        speechSynthesis.speak(Bingo.objVoz);

    }

    function NroAleatorio(min, max) {
        return Math.floor(Math.random() * (max - min)) + min;
    }

   
}



$("#slider").slider({
    create: function () {
        $("#CantSegundos").html("<span class='Velocidad'>5</span>");
    },
    slide: function (event, ui) {
        $("#CantSegundos").html("<span class='Velocidad'>" + ui.value + "</span>");
    },
    min: 1,
    max: 30,
    value: 5
});

function New() { }