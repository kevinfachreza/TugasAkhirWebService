<?php

namespace App\Http\Controllers\Gejala;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Gejala;

class ViewController extends Controller
{
	public function index()
	{
		$data['gejala'] = Gejala::all();
		return view('gejala.index',$data);
	}

	public function single($id)
	{
		$data['gejala'] = Gejala::find($id);
		return view('gejala.edit',$data);
	}

	public function create()
	{
		return view('gejala.create');
	}
}
