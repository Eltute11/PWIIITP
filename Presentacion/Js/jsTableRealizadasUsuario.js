$(document).ready(function () {

    $.ajax({
        type: "POST",
        url: "/Servicios/MaratonService.asmx/ObtenerMaratonesRealizadas",
        data: "{}",
        async: true, 
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            cargarTabla('MaratonesRealizadasUsuario', data.d)
        },
        error: function (xhr, status, error) {//cualquier error del lado servidor sale por este evento
            alert(xhr.responseText);
        }
    });

});


function vaciarTabla(id) {
    $('#' + id + " tbody tr").remove();
}

function cargarTabla(id, items) {
    vaciarTabla(id);
    $.each(items, function (index, obj) {
        
        if (obj.Presente) {
            obj.Presente = "checked";
        } else {
            obj.Presente = "";
        }

        if (obj.Abandono) {
            obj.Abandono = "checked"
        } else {
            obj.Abandono = "";
        }

        // Formateo la hora ya viene separada por diferentes propiedades en el objeto. Actualmente la BDD acepta milisegundos 2 pero el JS trae 3.
        var hs = FormatNumberLength(obj.Tiempo_Llegada.Hours, 2);
        var min = FormatNumberLength(obj.Tiempo_Llegada.Minutes, 2);
        var seg = FormatNumberLength(obj.Tiempo_Llegada.Seconds, 2);
        var miliseg = FormatNumberLength(obj.Tiempo_Llegada.Milliseconds, 2);

        var Tiempo_Llegada = hs + ":" + min + ":" + seg + ":" + miliseg
   
        $('#' + id).append('<tr><td>' + obj.Nombre + '</td><td>' + obj.Lugar_Salida + '</td><td> <input type="checkbox" disabled ' + obj.Presente + '></td><td> ' + obj.Posicion + '</td><td> <input type="checkbox" disabled ' + obj.Abandono + '></td><td> ' + Tiempo_Llegada + '</td><td> $' + obj.Premio + '</tr>');
    });
}

function FormatNumberLength(num, length) {
    //Agrega 0 adelante de manera que el formato sea 01 y no 1 por ejemplo.
    var r = "" + num;
    while (r.length < length) {
        r = "0" + r;
    }
    return r.toString();
}
