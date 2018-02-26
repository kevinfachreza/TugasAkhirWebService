<?php

namespace App\Http\Controllers\Kasus;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Kasus;
use App\Models\Diagnosis;
use App\Models\Gejala;

class ViewController extends Controller
{
    	public function index()
    	{
		$data['kasus'] = Kasus::all();
		return view('kasus.index',$data);
    	}

    	public function create()
    	{
		$data['diagnosis'] = Diagnosis::all();
		return view('kasus.create',$data);
    	}

    	public function single($id)
    	{
    		$data['diagnosis'] = Diagnosis::all();
    		$data['gejala'] = Gejala::all();
		$data['kasus'] = Kasus::with('diagnosis')->find($id);
		$kasus = $data['kasus'];

		return view('kasus.single',$data);
    	}
}
