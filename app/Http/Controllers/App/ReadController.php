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
		$arrayGejalaAsked = [];

		foreach($gejala as $key=>$value) {
			if($value == 1)
				array_push($arrayGejala, $key);

			array_push($arrayGejalaAsked, $key);
		}

		$arrayGejalaSorted = $arrayGejala;
		$tempArrayGejala = $arrayGejala;
		sort($arrayGejalaSorted);
		$stringGejalaSorted = implode(",", $arrayGejalaSorted);
		$printResult = 0;

		while(!$printResult)
		{	
			$rules = Rules::where('items',$stringGejalaSorted)->orderBy('probability','desc')->get();
    			//IF RESULT GAADA UNTUK ITEMS SET TERSEBUT MAKA

			if(!empty($rules[0]))
			{
				//PREVENT MENANYAKAN PERTANYAAN YANG SUDAH DITANYAKAN
				foreach($rules as $rule)
				{
					if(!in_array($rule->result, $arrayGejalaAsked))
					{
						$gejala_result = explode(',', $rule->result);
						$gejala_data = Gejala::where('id',$gejala_result[0])->first();
						$printResult = 1;
						break;
					}
					else
					{
						array_pop($tempArrayGejala);
						$arrayGejalaSorted = $tempArrayGejala;
						sort($arrayGejalaSorted);
						$stringGejalaSorted = implode(",", $arrayGejalaSorted);
					}
				}

			}
			else
			{
				array_pop($tempArrayGejala);
				$arrayGejalaSorted = $tempArrayGejala;
				sort($arrayGejalaSorted);
				$stringGejalaSorted = implode(",", $arrayGejalaSorted);
			}
		}

		return json_encode($gejala_data);
	}
}
