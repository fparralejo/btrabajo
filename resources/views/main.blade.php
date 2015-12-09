@extends('layout')


@section('principal')
<h2 class="page-header">Buscar Trabajo</h2>

<style>
    .sgsiRow:hover{
        cursor: pointer;
    }

</style>

<script type="text/javascript" charset="utf-8">
	$(document).ready(function() {
        $('#ejemplo1').dataTable({
        	"responsive": true,
            "bProcessing": true,
            "sPaginationType":"full_numbers",
            "oLanguage": {
                "sLengthMenu": "Ver _MENU_ registros por pagina",
                "sZeroRecords": "No se han encontrado registros",
                "sInfo": "Ver _START_ al _END_ de _TOTAL_ Registros",
                "sInfoEmpty": "Ver 0 al 0 de 0 registros",
                "sInfoFiltered": "(filtrados _MAX_ total registros)",
                "sSearch": "Busqueda:",
                "oPaginate": { 
                    "sLast": "Última página", 
                    "sFirst": "Primera", 
                    "sNext": "Siguiente", 
                    "sPrevious": "Anterior" 
                }
            },
            "bSort":true,
            "aaSorting": [[ 0, "asc" ]],
            "aoColumns": [
//                { "sType": 'string' },
                { "sType": 'string' },
                { "sType": 'string' },
                { "sType": 'string' },
                { "sType": 'string' },
                { "sType": 'string' },
                { "sType": 'string' },
                { "sType": 'string' },
                { "sType": 'string' },
                { "sType": 'string' },
                { "sType": 'string' },
                { "sType": 'string' },
                { "sType": 'none' },
                { "sType": 'none' },
                { "sType": 'none' },
                { "sType": 'none' }
            ],                    
            "bJQueryUI":true,
            "aLengthMenu": [[10, 25, 50, -1], [10, 25, 50, "Todos"]]
        });
	} );

//	function cambioCriterio(objeto,CriConf2){
//		objeto.value = CriConf2.value;
//
//	}

	function leerOferta(id_oferta){
        $.ajax({
          data:{"id_oferta":id_oferta},  
          url: '{{ URL::asset("ofertas/show") }}',
          type:"get",
          success: function(data) {
            var oferta = JSON.parse(data);
            $('#id_oferta').val(oferta.id_oferta);
            $('#oferta').val(oferta.oferta);
            $('#descripcion').val(oferta.descripcion);
            $('#empresa').val(oferta.empresa);
            $('#telefono').val(oferta.telefono);
            $('#email').val(oferta.email);
            $("#url").val(oferta.url);
            $("#tipo_contrato").val(oferta.tipo_contrato);
            $("#duracion").val(oferta.duracion);
            $("#jornada").val(oferta.jornada);
            $("#salario").val(oferta.salario);
            $("#fecha").val(oferta.fecha);
            $("#cv_pdf").val(oferta.cv_pdf);
            //cambiar nombre del titulo del formulario
            $("#tituloForm").html('Editar Datos');
            $("#submitir").val('OK');
          }
        });
	}

	function borrarOferta(id_oferta){
            if (confirm("¿Desea borrar la oferta?"))
            {
                $.ajax({
                  data:{"id_oferta":id_oferta},  
                  url: '{{ URL::asset("ofertas/delete") }}',
                  type:"get",
                  success: function(data) {
                        $('#accionTabla').html(data);
                        $('#accionTabla').show();
                  }
                });
                setTimeout(function ()
                {
                    document.location.href="{{URL::to('ofertas')}}";
                }, 1000);
            }
	}

	function ofertaSeguimiento(id_oferta){
            //vamos a la views de seguimiento con esta oferta
            document.location.href="{{URL::to('seguimiento')}}/"+id_oferta;
	}

	//hacer desaparecer en cartel
	$(document).ready(function() {
	    setTimeout(function() {
	        $("#accionTabla2").fadeOut(1500);
	    },3000);
	});


        function verPDF(pdf){
            window.open('{{ URL::asset('pdf_cv') }}/'+pdf, '', 'scrollbars=yes,menubar=no,height=600,width=800,resizable=yes,toolbar=no,status=no,location=no');
        }
        
</script>

<h3>Ofertas</h3>

<!-- aviso de alguna accion -->
<div class="alert alert-success" role="alert" id="accionTabla" style="display: none; ">
</div>

@if (Session::has('errors'))
<div class="alert alert-success" id="accionTabla2" role="alert" style="display: block; ">
{{ $errors }}
</div>
@endif

<table id="ejemplo1" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
    <thead>
        <tr>
            <!--<th>IdOferta</th>-->
            <th>Oferta</th>
            <th>Descripción</th>
            <th>Empresa</th>
            <th>Telefono</th>
            <th>E-mail</th>
            <th>url</th>
            <th>Tipo</th>
            <th>Duracion</th>
            <th>Jornada</th>
            <th>Salario</th>
            <th>Fecha</th>
            <th>PDF</th>
            <th></th>
            <th></th>
            <th></th>
        </tr>
    </thead>
    <tbody>
    @foreach ($listado as $oferta)
    <?php
    //carga los datos en el formulario para editarlos
    $url="javascript:leerOferta(".$oferta->id_oferta.");";
    ?>
        <tr>
<!--            <td class="sgsiRow" onClick="{{ $url }}">{{ $oferta->id_oferta }}</td>-->
            <td class="sgsiRow" onClick="{{ $url }}">{{ $oferta->oferta }}</td>
            <td class="sgsiRow" onClick="{{ $url }}">{{ $oferta->descripcion }}</td>
            <td class="sgsiRow" onClick="{{ $url }}">{{ $oferta->empresa }}</td>
            <td class="sgsiRow" onClick="{{ $url }}">{{ $oferta->telefono }}</td>
            <td class="sgsiRow" onClick="{{ $url }}">{{ $oferta->email }}</td>
            <td class="sgsiRow" onClick="{{ $url }}">{{ $oferta->url }}</td>
            <td class="sgsiRow" onClick="{{ $url }}">{{ $oferta->tipo_contrato }}</td>
            <td class="sgsiRow" onClick="{{ $url }}">{{ $oferta->duracion }}</td>
            <td class="sgsiRow" onClick="{{ $url }}">{{ $oferta->jornada }}</td>
            <td class="sgsiRow" onClick="{{ $url }}">{{ $oferta->salario }}</td>
            <td class="sgsiRow" onClick="{{ $url }}">{{ \Carbon\Carbon::createFromFormat('Y-m-d H:i:s',$oferta->fecha)->format('d/m/Y') }}</td>
            <td><a href="#" onclick="verPDF('{{ $oferta->cv_pdf }}');">{{ $oferta->cv_pdf }}</a></td>
            <td>
                <button type="button" onclick="borrarOferta({{ $oferta->id_oferta }})" class="btn btn-xs btn-danger">Borrar</button>
            </td>
            <td>
                <button type="button" onclick="ofertaSeguimiento({{ $oferta->id_oferta }})" class="btn btn-xs btn-success">Seguimiento</button>
            </td>
            <td>
                <button type="button" onclick="ofertaEntrevistas({{ $oferta->id_oferta }})" class="btn btn-xs btn-success">Entrevistas</button>
            </td>
        </tr>
    @endforeach
    </tbody>
</table>

<hr/>
<h3><span id="tituloForm">Nuevos Datos</span></h3>
<br/>

<style type="text/css">
#productForm .inputGroupContainer .form-control-feedback,
#productForm .selectContainer .form-control-feedback {
    top: 0;
    right: -15px;
}
</style>

<form role="form" class="form-horizontal" id="productForm" name="productForm" action="{{ URL::asset('ofertas') }}" method="post">
    <!-- CSRF Token -->
    <input type="hidden" name="_token" value="{{ csrf_token() }}">

    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label for="oferta">Oferta:</label><input type="text" class="form-control" id="oferta" name="oferta" maxlength="100">
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-8">
            <div class="form-group">
                <label for="descripcion">Descripcion:</label>
                <textarea class="form-control" rows="4" name="descripcion" id="descripcion"></textarea>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label for="empresa">Empresa:</label><input type="text" class="form-control" id="empresa" name="empresa" maxlength="75">
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-5">
            <div class="form-group">
                <label for="telefono">Telefono:</label><input type="text" class="form-control" id="telefono" name="telefono" maxlength="20">
            </div>
        </div>
        <div class="col-md-1">
        </div>
        <div class="col-md-5">
            <div class="form-group">
                <label for="email">Email:</label><input type="text" class="form-control" id="email" name="email" maxlength="100">
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-11">
            <div class="form-group">
                <label for="url">url:</label><input type="text" class="form-control" id="url" name="url" maxlength="200">
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-5">
            <div class="form-group">
                <label for="tipo_contrato">tipo_contrato:</label><input type="text" class="form-control" id="tipo_contrato" name="tipo_contrato" maxlength="30">
            </div>
        </div>
        <div class="col-md-1">
        </div>
        <div class="col-md-5">
            <div class="form-group">
                <label for="duracion">duracion:</label><input type="text" class="form-control" id="duracion" name="duracion" maxlength="25">
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-5">
            <div class="form-group">
                <label for="jornada">jornada:</label><input type="text" class="form-control" id="jornada" name="jornada" maxlength="25">
            </div>
        </div>
        <div class="col-md-1">
        </div>
        <div class="col-md-5">
            <div class="form-group">
                <label for="salario">salario:</label><input type="text" class="form-control" id="salario" name="salario" maxlength="20">
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-5">
            <div class="form-group">
                <script language="JavaScript">
//                jQuery(function($){
//                   $.datepicker.regional['es'] = {
//                      closeText: 'Cerrar',
//                      prevText: '&#x3c;Ant',
//                      nextText: 'Sig&#x3e;',
//                      currentText: 'Hoy',
//                      monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
//                      monthNamesShort: ['Ene','Feb','Mar','Abr', 'May','Jun','Jul','Ago','Sep', 'Oct','Nov','Dic'],
//                      dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
//                      dayNamesShort: ['Dom','Lun','Mar','Mié','Juv','Vie','Sáb'],
//                      dayNamesMin: ['Do','Lu','Ma','Mi','Ju','Vi','Sá'],
//                      weekHeader: 'Sm',
//                      dateFormat: 'dd/mm/yy',
//                      firstDay: 1,
//                      isRTL: false,
//                      showMonthAfterYear: false,
//                      yearSuffix: ''};
//                   $.datepicker.setDefaults($.datepicker.regional['es']);
//                });

                $(function() {
                        $("#fecha").datepicker({
                            closeText: 'Cerrar',
                            prevText: '&#x3c;Ant',
                            nextText: 'Sig&#x3e;',
                            currentText: 'Hoy',
                            monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
                            monthNamesShort: ['Ene','Feb','Mar','Abr', 'May','Jun','Jul','Ago','Sep', 'Oct','Nov','Dic'],
                            dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
                            dayNamesShort: ['Dom','Lun','Mar','Mié','Juv','Vie','Sáb'],
                            dayNamesMin: ['Do','Lu','Ma','Mi','Ju','Vi','Sá'],
                            weekHeader: 'Sm',
                            format: 'dd/mm/yyyy',
                            firstDay: 1,
                            isRTL: false,
                            showMonthAfterYear: false,
                            yearSuffix: '',
                            changeMonth: true, 
                            changeYear: true 
                        });
                });
                </script>
                <label for="fecha">Fecha:</label>
                <input type="text" class="form-control" id="fecha" name="fecha"  maxlength="38">
            </div>
        </div>
        <div class="col-md-1">
        </div>
        <div class="col-md-5">
            <label for="cv_pdf">CV PDF:</label>
            <select class="form-control" id="cv_pdf" name="cv_pdf">
                <option value=""></option>
                <option value="CV01.pdf">CV01.pdf</option>
            </select>
        </div>
    </div>
    <br/>



    <input type="hidden" id="id_oferta" name="id_oferta" value="" />
    <input type="hidden" id="id_usuario" name="id_usuario" value="{{ Session::get('id') }}" />
    <input type="submit" id="submitir" class="btn btn-default" value="Nuevo"/>
</form>

<script>
$(document).ready(function() {
    $('#productForm').formValidation({
        framework: 'bootstrap',
        icon: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            id_oferta: {
                validators: {
                    notEmpty: {
                        message: 'El Id Oferta es requerido'
                    },
                    numeric: {
                        message: 'El Id Oferta tiene que ser un valor numérico'
                    }
                }
            },
            oferta: {
                validators: {
                    notEmpty: {
                        message: 'La Oferta de trabajo es requerida'
                    }
                }
            },
            descripcion: {
                validators: {
                    notEmpty: {
                        message: 'La descripción de trabajo es requerida'
                    }
                }
            },
            empresa: {
                validators: {
                    notEmpty: {
                        message: 'La empresa de trabajo es requerida'
                    }
                }
            }
        }
    });
});
</script>

@stop



