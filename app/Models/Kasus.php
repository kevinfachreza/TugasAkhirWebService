<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Kasus extends Model
{
	
	protected $table = 'kasus';

	public function diagnosis()
	{
		return $this->hasOne('App\Models\Diagnosis','id','diagnosis_id');
	}

	public function gejala()
	{
		return $this->hasMany('App\Models\DiagnosisGejala','kasus_id','id');
	}
}
