<?php

namespace App\Http\Controllers\Gejala;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Gejala;

class PostController extends Controller
{
    	public function delete($id)
    	{

    		$gejala = Gejala::find($id);
    		$gejala->delete();

    		$message = 'Hapus data sukses';
    		$title = 'sukses';
    		$status = 1;

    		return redirect('gejala') 
    		->with('message', $message)
            ->with('title',$title)
            ->with('status', $status);
    	}

    	public function edit($id, Request $request)
    	{
    		$gejala = Gejala::find($id);
    		$gejala->name = $request->input('gejala');
    		$gejala->save();

    		$message = 'Pergantian data sukes';
    		$title = 'sukses';
    		$status = 1;

    		return back() ->with('message', $message)
           ->with('title',$title)
           ->with('status', $status);
    	}


    	public function create(Request $request)
    	{
    		$gejala = new Gejala;
    		$gejala->name = $request->input('name');
    		$gejala->save();

    		$message = 'Pergantian data sukes';
    		$title = 'sukses';
    		$status = 1;

    		return redirect('gejala/new') ->with('message', $message)
           ->with('title',$title)
           ->with('status', $status);
    	}
}
