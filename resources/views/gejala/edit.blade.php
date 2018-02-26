@extends('layout')


@section('content')
<div class="row">
	<div class="col-md-12">
		<div class="card">
			<div class="card-header card-header-icon" data-background-color="purple">
				<i class="material-icons">assignment</i>
			</div>
			<div class="card-content">
				<h4 class="card-title">{{$gejala->name}}</h4>
				<div class="toolbar">
					<!--        Here you can write extra buttons/actions for the toolbar              -->
				</div>
				<form method="POST" action="{{url()->current()}}" style="padding:20px">
					{{csrf_field()}}
					<div class="form-group label-floating">
						<label class="control-label">Nama Gejala</label>
						<input type="text" name="gejala" value="{{$gejala->name}}" class="form-control">
						<span class="material-input"></span>
					</div>
					<div class="form-group label-floating">
						<label class="control-label">ID</label>
						<input type="text" name="id" value="{{$gejala->id}}" class="form-control" disabled="">
						<span class="material-input"></span>
					</div>
					<button class="btn btn-primary" type="submit">Edit</button>
				</form>

				<form method="POST" action="{{url()->current()}}" style="padding:20px" id="deleteForm">
					{{csrf_field()}}
					<button class="btn btn-rose btn-fill" type="button" onclick="swalDelete()">Delete<div class="ripple-container"></div></button>
				</form>


			</div>
		</div>
	</div>
</div>
@endsection


@section('js')
@endsection