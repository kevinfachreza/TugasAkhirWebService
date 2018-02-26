@foreach($diagnosis as $item)
@php $count = 0 @endphp
@foreach($item->gejala as $subitem)
	@php $count++ @endphp
	@if($count < count($item->gejala))
		{{$subitem->gejala_id}},
		@else
		{{$subitem->gejala_id}}
		@endif
	@endforeach
	<br>
@endforeach