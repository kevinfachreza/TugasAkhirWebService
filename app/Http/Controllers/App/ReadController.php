<?php

namespace App\Http\Controllers\App;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Rules;
use App\Models\Gejala;

class ReadController extends Controller
{
    	public function getNextQuestion(Request $request)
    	{
    		$gejala = $request->gejala;

    		$arrayGejala = [];

    		foreach($gejala as $key=>$value) {
   			if($value == 1)
   				array_push($arrayGejala, $key);
    		}

    		sort($arrayGejala);
    		$stringGejala = implode(", ", $arrayGejala);

    		$rules = Rules::where('items',$stringGejala)->orderBy('probability','desc')->first();
    		$gejala_result = explode(',', $rules->result);
    		$gejala = Gejala::where('id',$gejala_result[0])->first();


    		return json_encode($gejala);
    	}
}
