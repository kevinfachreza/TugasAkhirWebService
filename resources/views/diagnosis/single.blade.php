@extends('layout')


@section('content')
	<div class="row">
	<div class="col-md-12">


		<div class="card">
			<div class="card-header card-header-icon" data-background-color="purple">
				<i class="material-icons">assignment</i>
			</div>
			<div class="card-content">
				<h4 class="card-title">{{$diagnosis->name}}</h4>
				<div class="toolbar">
					<!--        Here you can write extra buttons/actions for the toolbar              -->
				</div>
				<form method="POST" action="{{url()->current()}}" style="padding:20px">
					{{csrf_field()}}
					<div class="form-group label-floating">
						<label class="control-label">Nama Diagnosis</label>
						<input type="text" name="name" value="{{$diagnosis->name}}" class="form-control">
						<span class="material-input"></span>
					</div>
					<div class="form-group label-floating">
						<label class="control-label">ID</label>
						<input type="text" name="id" value="{{$diagnosis->id}}" class="form-control" disabled="">
						<span class="material-input"></span>
					</div>
					<button class="btn btn-primary" type="submit">Edit</button>
				</form>
			</div>
		</div>

		{{--
		<div class="card">
			<div class="card-header card-header-icon" data-background-color="purple">
				<i class="material-icons">assignment</i>
			</div>
			<div class="card-content">
				<h4 class="card-title">Daftar Gejala {{$diagnosis->name}}</h4>
				<div class="toolbar">
					<!--        Here you can write extra buttons/actions for the toolbar              -->
				</div>
				<div class="material-datatables">
					<table id="datatables" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">
						<thead>
							<tr>
								<th>ID</th>
								<th>Nama Gejala</th>
								<th>Kode ICD</th>
								<th class="disabled-sorting text-right">Actions</th>
							</tr>
						</thead>
						<tbody>
							@foreach($diagnosis->gejala as $item)
							<tr>
								<td>{{$item->id}}</td>
								<td>{{$item->gejala->name}}</td>
								<td>-</td>
								<td class="text-right">
									<a href="#" class="btn btn-simple btn-danger btn-icon remove"><i class="material-icons">close</i></a>
								</td>
							</tr>
							@endforeach
						</tbody>
					</table>
				</div>
			</div>
			<!-- end content-->
		</div>

		<div class="card">
			<div class="card-header card-header-icon" data-background-color="purple">
				<i class="material-icons">add</i>
			</div>
			<div class="card-content">
				<h4 class="card-title">Tambah Gejala {{$diagnosis->name}}</h4>
				<form method="POST" action="{{url('')}}/diagnosis/gejala/{{$diagnosis->id}}" style="padding:20px">
					{{csrf_field()}}
					
					<select class="selectpicker" name="gejala" data-live-search="true" data-size="6">
						@foreach($gejala as $item)
						<option value="{{$item->id}}">{{$item->name}}</option>
						@endforeach
					</select>

					<button class="btn btn-primary" type="submit">Tambah</button>
				</form>
			</div>
			<!-- end content-->
		</div>
		--}}

		<!--  end card  -->
	</div>
	<!-- end col-md-12 -->
</div>
@endsection


@section('js')
<script type="text/javascript">
	$(document).ready(function() {
		$('#datatables').DataTable({
			"pagingType": "full_numbers",
			"lengthMenu": [
			[10, 25, 50, -1],
			[10, 25, 50, "All"]
			],
			responsive: true,
			language: {
				search: "_INPUT_",
				searchPlaceholder: "Search records",
			}

		});


		var table = $('#datatables').DataTable();

        // Edit record
        table.on('click', '.edit', function() {
        	$tr = $(this).closest('tr');

        	var data = table.row($tr).data();
        	window.location.href = "{{url('diagnosis/')}}/"+ data[0];
        });

        // Delete a record
        table.on('click', '.remove', function(e) {
        	$tr = $(this).closest('tr');
        	
        	var data = table.row($tr).data();

        	swal({
          title: 'Are you sure?',
          text: 'You will not be able to recover this imaginary file!',
          type: 'warning',
          showCancelButton: true,
          confirmButtonText: 'Yes, delete it!',
          cancelButtonText: 'No, keep it'
	      }).then((result) => 
	        {
	            if (result) 
	            {
        			window.location.href = "{{url('diagnosis/gejala')}}/"+ data[0] + "/delete";
	            } 
	        })


        	e.preventDefault();
        });

        //Like record
        table.on('click', '.like', function() {
        	alert('You clicked on Like button');
        });

        $('.card .material-datatables label').addClass('form-group');
   });
</script>
@endsection