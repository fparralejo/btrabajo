<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class entrevista extends Model {

	protected $table = 'bt_entrevistas';

	protected $primaryKey = "id_entrevista";

	public $timestamps = false;

}
