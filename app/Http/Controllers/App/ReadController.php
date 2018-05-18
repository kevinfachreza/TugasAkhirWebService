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
		$pasien['jenis_kelamin'] = $request->jenis_kelamin;
		$pasien['usia'] = $request->usia;

		$arrayGejala = [];
		$arrayGejalaAsked = [];
		$arrayGejalaSpecial = [49,35,48,331]; //wanita,anak,dewasa,tua
		$arrayGejalaSpecialUsia = [139,35,48,331]; //bayi,anak,dewasa,tua

		//diambil yang bernilai 1 saja
		foreach($gejala as $key=>$value) {
			if($value == 1)
				array_push($arrayGejala, $key);

			array_push($arrayGejalaAsked, $key);
		}
		
		//cek jika ada batuk
		if(in_array(10, $arrayGejalaAsked))
		{
			$id = 0;
			if(!in_array(57, $arrayGejalaAsked) && !in_array(66, $arrayGejalaAsked))
			{
				$id = 57;
			}
			elseif(!empty($gejala['57']) && $gejala['57'] == 0 && !in_array(66, $arrayGejalaAsked))
			{
				$id = 66;
			}
			elseif(!empty($gejala['66']) &&  $gejala['66'] == 0 && !in_array(57, $arrayGejalaAsked))
			{
				$id = 57;
			}

			if($id!=0)
			{
				$rules = Gejala::where('id',$id)->first();
				return json_encode([
					'command' => 'ask',
					'gejala' => $rules,
					'append' => 0,
					'append_value' => 0
				]);
			}
		}


		//cek jika demam
		if(in_array(23, $arrayGejalaAsked))
		{
			$id = 0;
			if(!in_array(41, $arrayGejalaAsked))
			{
				$id = 41;
			}
			elseif(!in_array(177, $arrayGejalaAsked))
			{
				$id = 177;
			}

			if($id!=0)
			{
				$rules = Gejala::where('id',$id)->first();
				return json_encode([
					'command' => 'ask',
					'gejala' => $rules,
					'append' => 0,
					'append_value' => 0
				]);
			}
		}



		//cek apakah gejala spesial usia ada didalam yang sudah ditanya, jika sudah salah satu misal tua tidakperlu tanya apakah dewasa
		foreach($arrayGejalaSpecialUsia as $age)
		{
			if(in_array($age, $arrayGejalaAsked))
			{
				array_push($arrayGejalaAsked, 35);
				array_push($arrayGejalaAsked, 48);
				array_push($arrayGejalaAsked, 331);
				array_push($arrayGejalaAsked, 139);
				break;
			}
		}

		$arrayGejalaSorted = $arrayGejala;
		$tempArrayGejala = $arrayGejala;
		sort($arrayGejalaSorted);
		$stringGejalaSorted = implode(",", $arrayGejalaSorted);
		$printResult = 0;

		$gejala_data = 0;
		$append = 0;
		$append_value = 0;
		$command = 'ask';
		$out = 0;
		$found = 0;

		while(!$printResult)
		{	
			//mencari items dari tabel rules
			$rules = Rules::where('items',$stringGejalaSorted)->orderBy('probability','desc')->get();

    			//jika result ada maka akan masuk ke proses berikutnya
    			//jika result kosong maka akan di pop gejala paling akhir dan akan diolah lagi
			if(!empty($rules[0]))
			{
				//MELAKUKAN CEK APAKAH MENANYAKAN PERTANYAAN YANG SUDAH DITANYAKAN
				foreach($rules as $rule)
				{
					//cek jika ada rule yang telah ditanyakan
					if(!in_array($rule->result, $arrayGejalaAsked))
					{
						//jika ada rule yang sudah obvious untuk ditanyakan, maka diolah di sini
						if(in_array($rule->result, $arrayGejalaSpecial))
						{
							$gejala_result = explode(',', $rule->result);
							$result = $this->getSpecialRule($gejala_result[0],$pasien);
							$command = $result['command'];
							$gejala_data = $result['gejala'];
							$append = $result['append'];
							$append_value = $result['append_value'];
							$printResult = 1;
							$found = 1;
							break;
						}
						else
						{
							$gejala_result = explode(',', $rule->result);
							$gejala_data = Gejala::where('id',$gejala_result[0])->first();
							$printResult = 1;
							$command = 'ask';
							$append = 0;
							$found = 1;
							break;
						}
					}
					else
					{
						//jika ada maka akan di pop dan ditanyakan ulang
						array_pop($tempArrayGejala);
						$arrayGejalaSorted = $tempArrayGejala;
						sort($arrayGejalaSorted);
						$stringGejalaSorted = implode(",", $arrayGejalaSorted);
					}
				}
				if($found != 1) $out = 1;

			}
			else
			{
				array_pop($tempArrayGejala);
				$arrayGejalaSorted = $tempArrayGejala;
				sort($arrayGejalaSorted);
				$stringGejalaSorted = implode(",", $arrayGejalaSorted);
			}
			if($out)
			{
				$printResult = 1;
				$command = 'out';
			}
		}

		return json_encode([
			'command' => $command,
			'gejala' => $gejala_data,
			'append' => $append,
			'append_value' => $append_value
		]);
	}

	private function getSpecialRule($gejala,$pasien)
	{
		$arrayGejalaSpecial = [49,35,48,331]; //wanita,anak,dewasa,tua,obesitas
		$arrayUsia = [35,48,331];

		if(in_array($gejala, $arrayUsia))
		{
			$kategori = $this->getKategoriUsia($pasien['usia']);
			$data['command'] = 'append';
			$data['append'] = $kategori;
			if($kategori == $gejala) $data['append_value'] = 1;
			else $data['append_value'] = 0;
			$data['gejala'] = 0;
		}
		elseif($gejala == '49')
		{
			$data['command'] = 'append';
			$data['append'] = 49;
			$data['gejala'] = 0;
			$data['append_value'] = 1;
		}
		return $data;
	}

	private function getKategoriUsia($usia)
	{
		if($usia >= 0 && $usia < 1) $kategori = 139;
		elseif($usia >= 3 && $usia < 18) $kategori = 35;
		elseif($usia >= 18 && $usia < 65) $kategori = 48;
		elseif($usia >= 65) $kategori = 331;

		return $kategori;
	}
}
