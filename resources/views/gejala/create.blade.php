@extends('layout')


@section('content')
<div class="row">
	<div class="col-md-12">
		<div class="card">
			<div class="card-header card-header-icon" data-background-color="purple">
				<i class="material-icons">assignment</i>
			</div>
			<div class="card-content">
				<h4 class="card-title">Gejala Baru</h4>
				<div class="toolbar">
					<!--        Here you can write extra buttons/actions for the toolbar              -->
				</div>
				<form method="POST" action="{{url()->current()}}" style="padding:20px">
					{{csrf_field()}}
					<div class="form-group label-floating">
						<label class="control-label">Nama Gejala</label>
						<input type="text" name="name" value="" class="form-control">
						<span class="material-input"></span>
					</div>
					<button class="btn btn-primary" type="submit">Edit</button>
				</form>


			</div>
		</div>
	</div>
</div>
@endsection


@section('js')
@endsection