<?php

namespace App\Http\Controllers\Diagnosis;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Diagnosis;
use App\Models\DiagnosisGejala;

class PostController extends Controller
{
	public function create(Request $request)
    	{
    		$diagnosis = new Diagnosis;
    		$diagnosis->name = $request->input('name');
    		$diagnosis->save();

    		$message = 'Diagnosis sukses dibuat';
    		$title = 'sukses';
    		$status = 1;

    		return redirect('diagnosis/'.$diagnosis->id) ->with('message', $message)
           ->with('title',$title)
           ->with('status', $status);
    	}

	public function delete($id)
	{
		$diagnosis = Diagnosis::find($id);
		$diagnosis->delete();

    		$message = 'Hapus diagnosis sukses';
    		$title = 'sukses';
    		$status = 1;

		return back() ->with('message', $message)
           ->with('title',$title)
           ->with('status', $status);
	}

  public function edit($id, Request $request)
  {
    $diagnosis = Diagnosis::find($id);
    $diagnosis->name= $request->input('name');
    $diagnosis->save();

        $message = 'Ganti diagnosis sukses';
        $title = 'sukses';
        $status = 1;

    return back() ->with('message', $message)
           ->with('title',$title)
           ->with('status', $status);
  }


	
}
