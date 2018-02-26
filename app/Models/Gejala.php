<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Gejala extends Model
{
	use SoftDeletes;
	
	protected $table = 'gejala';
	protected $dates = ['deleted_at'];

	public function diagnosis()
	{
		return $this->hasMany('App\Models\DiagnosisGejala','gejala_id','id');
	}
}
