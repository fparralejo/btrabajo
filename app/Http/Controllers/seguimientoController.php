<?php namespace App\Http\Controllers;

use Session;
use Input;
use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Http\Controllers\loginController;

use App\seguimiento;


use Illuminate\Http\Request;

class seguimientoController extends Controller {

	
	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		//
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		//
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		//
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		//
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		//
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		//
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}


        //OK
	public function main($id_oferta)
        {
            //control de sesion
            $login = new loginController();
            if (!$login->getControl()) {
                return redirect('/')->with('login_errors', '<font color="#ff0000">La sesión a expirado. Vuelva a logearse..</font>');
            }
            
            $listado = \DB::table('seguimientos')->where("id_oferta","=",$id_oferta)
                                                 ->get();
            //var_dump($listado);die;
            
            return view('seguimiento/main')->with('listado',$listado); 
        }

//        //OK
//	public function ofertasShow()
//        {
//            $oferta = oferta::find(Input::get('id_oferta'));
//            
//            //cambio el formato de la fecha
//            $oferta->fecha = \Carbon\Carbon::createFromFormat('Y-m-d H:i:s',$oferta->fecha)->format('d/m/Y');
//
//            //devuelvo la respuesta al send
//            echo json_encode($oferta);
//        }
//
//        //OK
//	public function ofertasDelete(){
//            $oferta = oferta::find(Input::get('id_oferta'));
//            $IdOferta = $oferta->id_oferta;
//
//            $oferta->estado = "0";
//
//            if($oferta->save()){
//                echo "Oferta ". $IdOferta ." borrada correctamente.";
//            }else{
//                echo "Oferta ". $IdOferta ." NO ha sido borrada.";
//            }
//	}
//        
//        //OK
//        public function ofertasCreateEdit(Request $request){
//            //si es nuevo este valor viene vacio
//            if($request->id_oferta === ""){
//                $oferta = new oferta();
//                $ok = 'Se ha dado de alta correctamente la oferta.';
//                $error = 'ERROR al dar de alta la oferta.';
//            }
//            //sino se edita este id_oferta
//            else{
//                $oferta = oferta::find($request->id_oferta);
//                $ok = 'Se ha editado correctamente la oferta.';
//                $error = 'ERROR al edtar la oferta.';
//            }
//
//            $oferta->id_oferta = $request->id_oferta;
//            $oferta->oferta = $request->oferta;
//            $oferta->descripcion = $request->descripcion;
//            $oferta->empresa = $request->empresa;
//            $oferta->telefono = $request->telefono;
//            $oferta->email = $request->email;
//            $oferta->url = $request->url;
//            $oferta->tipo_contrato = $request->tipo_contrato;
//            $oferta->duracion = $request->duracion;
//            $oferta->jornada = $request->jornada;
//            $oferta->salario = $request->salario;
//            
//            $fecha = \Carbon\Carbon::createFromFormat('d/m/Y',$request->fecha)->format('Y-m-d H:i:s');
//            $oferta->fecha = $fecha;
//            
//            $oferta->cv_pdf = $request->cv_pdf;
//            $oferta->id_usuario = Session::get('id');
//            $oferta->estado = "1";
//
//            //var_dump($oferta);die;
//            
//            if($oferta->save()){
//                return redirect('ofertas')->with('errors', $ok);
//            }else{
//                return redirect('ofertas')->with('errors', $error);
//            }
//        }
//        
        

	
}
