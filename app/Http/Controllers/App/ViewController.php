<?php

namespace App\Http\Controllers\App;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Gejala;

class ViewController extends Controller
{
    	public function index()
    	{
    		$data['gejalas'] = Gejala::all();
    		return view('app.index',$data);
    	}
}
