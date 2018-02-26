<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class DiagnosisGejala extends Model
{
	use SoftDeletes;
	protected $table = 'diagnosis_gejala';
	protected $dates = ['deleted_at'];

	public function gejala()
	{
		return $this->hasOne('App\Models\Gejala','id','gejala_id');
	}

	public function diagnosis()
	{
		return $this->hasOne('App\Models\Diagnosis','diagnosis_id','id');
	}

}
