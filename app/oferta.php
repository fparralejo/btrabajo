<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class oferta extends Model {

	protected $table = 'ofertas';

	protected $primaryKey = "id_oferta";

	public $timestamps = false;

}
