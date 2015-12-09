<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class seguimiento extends Model {

	protected $table = 'bt_seguimientos';

	protected $primaryKey = "id_seguimiento";

	public $timestamps = false;

}
