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
		$data['diagnosis'] = Kasus::all();
		return view('dashboard.diagnosisgejala',$data);
	}
}
