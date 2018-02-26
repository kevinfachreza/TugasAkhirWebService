@extends('layout')

@section('content')

<div class="row">
	<div class="col-md-12">
		<div class="card">
			<div class="card-header card-header-icon" data-background-color="purple">
				<i class="material-icons">assignment</i>
			</div>
			<div class="card-content">
				<h4 class="card-title">DataTables.net
					<a href="{{url('dashboard/diagnosis/gejala')}}" class="btn btn-primary pull-right">Ambil data Diagnosis + Gejala</a>
				</h4>
				<div class="toolbar">
					<!--        Here you can write extra buttons/actions for the toolbar              -->
				</div>
				<div class="material-datatables">
					<table id="datatables" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">
						<thead>
							<tr>
								<th>ID Gejala</th>
								<th>Nama Gejala</th>
								<th>Jumlah digunakan</th>
							</tr>
						</thead>
						<tbody>
							@foreach($gejala as $item)
							<tr>
								<td>{{$item->id}}</td>
								<td>{{$item->name}}</td>
								<td>{{$item->total}}</td>
							</tr>
							@endforeach
						</tbody>
					</table>
				</div>
			</div>
			<!-- end content-->
		</div>
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
        			window.location.href = "{{url('diagnosis')}}/"+ data[0] + "/delete";
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