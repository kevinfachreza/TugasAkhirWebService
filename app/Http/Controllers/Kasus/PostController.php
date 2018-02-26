<?php

namespace App\Http\Controllers\Kasus;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Kasus;
use App\Models\Diagnosis;
use App\Models\DiagnosisGejala;

class PostController extends Controller
{
    	public function create($id)
    	{
    		$kasus = new Kasus;
    		$kasus->diagnosis_id = $id;
    		$kasus->save();

    		$message = 'Buat data sukses';
    		$title = 'sukses';
    		$status = 1;

    		return redirect('kasus/'.$kasus->id) 
    		->with('message', $message)
            ->with('title',$title)
            ->with('status', $status);
    	}

    	public function delete($id)
    	{
    		$kasus = Kasus::find($id);
    		$kasus->delete();
		
		$message = 'Hapus data sukses';
    		$title = 'sukses';
    		$status = 1;

    		return redirect('kasus/') 
    		->with('message', $message)
            ->with('title',$title)
            ->with('status', $status);
    	}

	public function editDiagnosis(Request $request)
    	{
    		$id = $request->input('kasus_id');

		$kasus = Kasus::find($id);
		$kasus->diagnosis_id = $request->input('diagnosis_id');
		$kasus->save();

    		$message = 'Penambahan data sukses';
    		$title = 'sukses';
    		$status = 1;

    		return back()->with('message', $message)
           ->with('title',$title)
           ->with('status', $status);
    	}

    	public function deleteGejala($id)
	{
		$gejala = DiagnosisGejala::find($id);
		$gejala->delete();

    		$message = 'Hapus gejala sukses';
    		$title = 'sukses';
    		$status = 1;

		return back() ->with('message', $message)
           ->with('title',$title)
           ->with('status', $status);
	}



    	public function addGejala($id, Request $request)
    	{
    		$gejala = new DiagnosisGejala;
    		$gejala->gejala_id = $request->input('gejala');
    		$gejala->kasus_id = $id;
    		$gejala->save();

    		$message = 'Penambahan data sukses';
    		$title = 'sukses';
    		$status = 1;

    		return back()->with('message', $message)
           ->with('title',$title)
           ->with('status', $status);
    	}
}
