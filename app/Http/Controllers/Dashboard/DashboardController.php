<?php

namespace App\Http\Controllers\Dashboard;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Diagnosis;
use App\Models\DiagnosisGejala;
use App\Models\Gejala;
use App\Models\Kasus;

use DB;

class DashboardController extends Controller
{
	public function index()
	{
		$gejala = DB::select( DB::raw("
			SELECT g.id, g.name, COUNT(*) AS total FROM diagnosis_gejala dg, gejala g
			WHERE g.id = dg.gejala_id
			and dg.deleted_at is null
			GROUP BY dg.gejala_id
			") );

		$data['gejala'] = $gejala;
		return view('dashboard.index',$data);
	}

	public function diagnosisgejala(){
		$data['diagnosis'] = Diagnosis::all();
		$data['diagnosis'] = Kasus::where('test',0)->get();
		return view('dashboard.diagnosisgejala',$data);
	}

	public function diagnosisgejalatest(){
		$data['diagnosis'] = Diagnosis::all();
		$data['diagnosis'] = Kasus::where('test',1)->get();
		return view('dashboard.diagnosisgejala',$data);
	}

	public function dataTraining()
	{

		$gejala = Gejala::latest()->first();
		$gejala = $gejala->id;

		$kasus = Kasus::where('test',0)->get();

		for($i=1;$i<=$gejala;$i++)
		{
			print($i);
			//if($i!=$gejala)
			echo ",";
		}
		echo "diagnosis";
		echo '<br>';


		foreach($kasus as $item)
		{
			$gejalas = DiagnosisGejala::where('kasus_id',$item->id)->get()->pluck('gejala_id')->toArray();
			$i = 0;

			for($i=1;$i<=$gejala;$i++)
			{
				if(in_array($i, $gejalas))
					print ("1");
				else
					print ("0");

				//if($i!=$gejala)
				echo ",";
			}
			echo $item->diagnosis->codename;
			/*
			foreach($item->gejala as $gejala)
			{
				$i++;
				$count = count($item->gejala);
				print($gejala->gejala_id);
				if($i!=$count)
					echo ",";

			}
			echo '<br>';
			print_r($gejalas);
			echo '<br>';
			*/
			echo '<br>';
		}

	}

	public function dataTesting()
	{

		$gejala = Gejala::latest()->first();
		$gejala = $gejala->id;

		$kasus = Kasus::where('test',1)->get();

		for($i=1;$i<=$gejala;$i++)
		{
			print($i);
			//if($i!=$gejala)
			echo ",";
		}
		echo "diagnosis";
		echo '<br>';


		foreach($kasus as $item)
		{
			$gejalas = DiagnosisGejala::where('kasus_id',$item->id)->get()->pluck('gejala_id')->toArray();
			$i = 0;

			for($i=1;$i<=$gejala;$i++)
			{
				if(in_array($i, $gejalas))
					print ("1");
				else
					print ("0");

				//if($i!=$gejala)
				echo ",";
			}
			echo $item->diagnosis->codename;
			/*
			foreach($item->gejala as $gejala)
			{
				$i++;
				$count = count($item->gejala);
				print($gejala->gejala_id);
				if($i!=$count)
					echo ",";

			}
			echo '<br>';
			print_r($gejalas);
			echo '<br>';
			*/
			echo '<br>';
		}

	}

	public function generateCodename()
	{
		$diagnosis = Diagnosis::all();

		foreach($diagnosis as $item)
		{
			$text = $item->name;
			$text = preg_replace('~[^\pL\d]+~u', '-', $text);
			$text = iconv('utf-8', 'us-ascii//TRANSLIT', $text);
			$text = preg_replace('~[^-\w]+~', '', $text);
			$text = trim($text, '-');
			$text = preg_replace('~-+~', '-', $text);
			$text = strtolower($text);

			if (empty($text)) {
				return 'n-a';
			}

			$new_item = Diagnosis::find($item->id);
			$new_item->codename = $text;
			$new_item->save();
		}
		print("DONE");
	}
}
