<?php

namespace App\Http\Controllers\Diagnosis;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Diagnosis;
use App\Models\DiagnosisGejala;
use App\Models\Gejala;

class ViewController extends Controller
{
    	public function index()
    	{
    		$data['diagnosis'] = Diagnosis::all();
    		return view('diagnosis.index',$data);
    	}

    	public function single($id)
    	{
    		$data['gejala'] = Gejala::all();
    		$data['diagnosis'] = Diagnosis::find($id);
    		return view('diagnosis.single',$data);
    	}

    	public function create()
    	{
    		return view('diagnosis.create');
    	}
}
