<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Diagnosis extends Model
{
	use SoftDeletes;
	protected $table = 'diagnosis';
	protected $dates = ['deleted_at'];

	public function gejala()
	{
		return $this->hasMany('App\Models\DiagnosisGejala','diagnosis_id','id');
	}
}
