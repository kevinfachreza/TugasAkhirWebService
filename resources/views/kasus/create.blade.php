@extends('layout')

@section('content')

<div class="row">
	<div class="col-md-8">
		<div class="card">
			<div class="card-header card-header-icon" data-background-color="purple">
				<i class="material-icons">assignment</i>
			</div>
			<div class="card-content">
				<h4 class="card-title">Pilih Diagnosis
				</h4>
				<div class="toolbar">
					
				</div>
				<div class="material-datatables">
					<table id="datatables" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">
						<thead>
							<tr>
								<th>ID</th>
								<th>Nama Diagnosis</th>
								<th class="disabled-sorting text-right">Actions</th>
							</tr>
						</thead>
						<tbody>
							@foreach($diagnosis as $item)
							<tr>
								<td>{{$item->id}}</td>
								<td>{{$item->name}}</td>
								<td class="text-right">
									<a href="{{url()->current()}}/{{$item->id}}" class="btn btn-simple btn-warning btn-icon edit"><i class="material-icons">dvr</i></a>
								</td>
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
        	window.location.href = "{{url('gejala/')}}/"+ data[0];
        });

        // Delete a record
        table.on('click', '.remove', function(e) {
        	$tr = $(this).closest('tr');
        	table.row($tr).remove().draw();
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