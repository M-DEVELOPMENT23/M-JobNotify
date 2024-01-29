$(document).ready(function() {
    window.addEventListener('message', function(event) {
        if (event.data.type === 'abrirnegocio') {

            $('.icono').append('<i class="' + event.data.icon + '"></i>');
            $('.fa-duotone').css('color', event.data.iconcolor);

            $('.icono').css('background', event.data.iconbackgroundcolor);



            var contenedor = $('#miContenedor');
            $('.contenedor').css('background-color', event.data.backgroundcolor); 


            var texto = event.data.texto;
            $('#text').append(event.data.jobname + ' ' + event.data.abrir);

            contenedor.text(texto).fadeIn();
            contenedor.css('width', 'auto');
            var anchoTexto = contenedor.width(); 
            contenedor.css('width', anchoTexto + 'px');
            setTimeout(() => {
                $('#miContenedor').fadeOut(1500, function() {
                    $('#text').empty(); 
                    $('.icono').empty();
                });
            }, 4000);


        }
        if (event.data.type === 'cerrarnegocio') {

            $('.icono').append('<i class="' + event.data.icon + '"></i>');
            $('.fa-duotone').css('color', event.data.iconcolor); 
            $('.icono').css('background', event.data.iconbackgroundcolor); 

            
            $('.contenedor').css('background-color', event.data.backgroundcolor); 
            var texto = event.data.texto;
            var contenedor = $('#miContenedor');
            $('#text').append(event.data.jobname + ' ' +event.data.cerrar);

            contenedor.text(texto).fadeIn();
            contenedor.css('width', 'auto');
            var anchoTexto = contenedor.width(); 
            contenedor.css('width', anchoTexto + 'px');
            setTimeout(() => {
                $('#miContenedor').fadeOut(1500, function() {
                    $('#text').empty(); 
                    $('.icono').empty();
                });
            }, 4000);

        }

        if (event.data.type === 'anunciopersonalizado') {

            $('.icono').append('<i class="' + event.data.icon + '"></i>');
            $('.fa-duotone').css('color', event.data.iconcolor); 
            $('.icono').css('background', event.data.iconbackgroundcolor); 

            
            $('.contenedor').css('background-color', event.data.backgroundcolor); 
            var texto = event.data.texto;
            var contenedor = $('#miContenedor');
            $('#text').append(event.data.jobname + ' ' + event.data.text);

            contenedor.text(texto).fadeIn();
            contenedor.css('width', 'auto');
            var anchoTexto = contenedor.width(); 
            contenedor.css('width', anchoTexto + 'px');
            setTimeout(() => {
                $('#miContenedor').fadeOut(1500, function() {
                    $('#text').empty(); 
                    $('.icono').empty();
                });
            }, 4000);

        }
    });
});
