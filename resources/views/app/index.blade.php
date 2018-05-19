@extends('app.layout')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-xs-12 col-md-8 col-md-offset-2">
            <div class="card">
                <div class="card-content" style="padding-top: 50px; padding-bottom: 50px">

                    <div id="welcome" class="text-center">
                        <h4>Selamat datang di Aqeela dari Medify</h4>
                        <p>Aqeela akan membantu anda untuk mendiagnosis penyakit anda berdasarkan gejala yang anda alami. Perlu anda tahu bahwa diagnosis yang kami berikan tidak bersifat final, kami rekomendasikan anda menemui dokter untuk mendapatkan kepastian mengenai penyakit yang anda derita.</p>
                        <button class="btn btn-primary">Selanjutnya<div class="ripple-container"></div></button>
                    </div>

                    <div id="pasien" class="text-center" style="display: none">
                        <h4>Isi data berikut</h4>
                        <div class="row">
                            <div class="col-md-8 col-md-offset-2 col-xs-12">
                                <input class="form-control" type="text" id="pasien-nama" placeholder="Nama">
                                <input class="form-control" type="text" id="pasien-usia" placeholder="Usia">
                                <select class="selectpicker" data-style="btn btn-primary btn-round" title="Single Select" data-width="100%" id="pasien-gender">
                                    <option value="1" selected>Laki laki</option>
                                    <option value="2">Perempuan</option>
                                </select>
                            </div>
                        </div>
                        <button class="btn btn-primary">Selanjutnya<div class="ripple-container"></div></button>
                    </div>


                    <div id="gejala-first" class="text-center"  style="display: none">
                        <h4>Apa gejala yang paling anda rasakan?</h4>
                        <div class="row">
                            <div class="col-md-8 col-md-offset-2 col-xs-12">
                                <select class="selectpicker" data-style="btn btn-primary btn-round" title="Single Select" data-live-search="true" data-size="7">
                                    @foreach($gejalas as $gejala)
                                    <option value="{{$gejala->id}}">{{$gejala->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <button class="btn btn-primary">Selanjutnya<div class="ripple-container"></div></button>
                    </div>


                    <div id="gejala-question" class="text-center"  style="display: none;min-height: 300px">
                        <h4>Apakah anda merasakan <span id="fill-gejala"></span></h4>
                        <button class="btn btn-primary yes">Ya<div class="ripple-container"></div></button>
                        <button class="btn btn-danger no">Tidak<div class="ripple-container"></div></button>
                    </div>

                    <div id="diagnosis-warning" class="text-center"  style="display: none;">
                        <h4>Setelah ini, saya akan memberikan kamu 5 diagnosis penyakit yang mungkin kamu alami</h4>
                        <p>Ingat diagnosis ini tidak bersifat final, kami rekomendasikan anda menemui dokter untuk mendapatkan kepastian mengenai penyakit yang anda derita.</p>
                        <button class="btn btn-primary">Selanjutnya<div class="ripple-container"></div></button>
                    </div>

                    <div id="diagnosis-result" class="row" style="display: none">
                        <h4 class="text-center ">Penyakit yang mungkin kamu derita</h4>
                        <div id="result" class="col-md-4 col-md-offset-4">
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('js')
<script type="text/javascript">
    $('#welcome button').click(function() {
        $("#welcome").fadeOut(500, function(){
            $("#pasien").fadeIn(500);
        });
    });

    $('#pasien button').click(function() {
        $("#pasien").fadeOut(500, function(){
            $("#gejala-first").fadeIn(500);
        });
    });

    $('#gejala-first button').click(function() {
        //get value
        var gejalaVal = $('#gejala-first select').val();
        setGejala(gejalaVal,1);

        //animasi
        $("#gejala-first").fadeOut(500, function(){
            $("#gejala-question").fadeIn(500);
        });
    });

    $('#diagnosis-warning button').click(function() {

        //animasi
        $("#diagnosis-warning").fadeOut(500, function(){
            $("#diagnosis-result").fadeIn(500);
        });
    });

    $('#gejala-question .yes').click(function() {
        setGejala(currentGejala,1);

    });
    $('#gejala-question .no').click(function() {
        setGejala(currentGejala,0);
    });


</script>


<script type="text/javascript">

    //INIT BACKBONE MODEL
    var gejalaPasien = new Backbone.Model({});
    var currentGejala = 0;
    var count_true = 0;
    var count = 0;

    function setGejala(index,value){
        //SET 
        if(value == 1)
        {
            count_true++        
        }
        count++
        console.log(index)
        gejalaPasien.set(index,value)
        console.log(gejalaPasien)
        var pasienNama = $('#pasien-nama').val()
        var pasienUsia = $('#pasien-usia').val()
        var pasienGender = $('#pasien-gender').val()

        //FORMATIN MODEL MENJADI MODEL YANG {gejala{"5":1,"9":1}
        var gejalaPasienJSON = new Backbone.Model({
            "gejala" : gejalaPasien,
            "jenis_kelamin" : pasienGender,
            "usia" : pasienUsia

        });

        //DIUBAH JADI JSON
        var gejalaPasienJSON = JSON.stringify(gejalaPasienJSON);

        //KIRIM KE SERVER UNTUK MINTA PERTANYAAN LAIN
        $.ajax({
            type: "POST",
            url: "{{url('api/app/question/next')}}",
            contentType: "application/json",
            headers: {
                'Access-Control-Allow-Credentials' : 'true'
            },
            data : gejalaPasienJSON,
            processData: false,
            success: function (data) {
                //console.log(data);
                var obj = JSON.parse(data)

                var command = obj.command
                var gejala = obj.gejala
                var append = obj.append
                var append_value = obj.append_value

                currentGejala = gejala.id


                console.log(count)
                if(count_true > 10)
                {
                    submitFinal(gejalaPasienJSON);
                }
                else if(count > 20)
                {
                    submitFinal(gejalaPasienJSON);
                }
                else
                { 
                    if(command === 'ask')
                    {
                        console.log('ask')
                        $("#gejala-question").fadeOut(500, function(){
                            $("#gejala-question").fadeIn(500);
                            $('#gejala-question #fill-gejala').html(gejala.name +' - '+ gejala.id);
                        });
                    }
                    else if(command === 'append')
                    {
                        console.log('append')
                        setGejala(append,append_value);
                    }
                    else
                    {
                        console.log(command)
                        submitFinal(gejalaPasienJSON);
                    }
                }




            },
            error: function (e) {
                alert(e)
            }
        });



    }


    function submitFinal(gejalaPasienJSON)
    {
        $.ajax({
            type: "POST",
            url: "http://127.0.0.1:5000/predict",
            contentType: "application/json",
            headers: {
                'Access-Control-Allow-Credentials' : 'true'
            },
            data : gejalaPasienJSON,
            dataType : 'json',
            processData: false,
            success: function (response) {
                diagnosis = response.result;
                console.log(diagnosis);
                $( "#diagnosis-result #result" ).html('')

                $.each(diagnosis, function(item) {
                    probability = Number(diagnosis[item].probability * 100).toFixed(2);
                    result = '<h4 class="title">'+diagnosis[item].diagnosis+'<small>· '+probability+'%</small></h4>'

                    $( "#diagnosis-result #result" ).append( result );
                })

                $("#gejala-question").fadeOut(500, function(){
                    $("#diagnosis-warning").fadeIn(500);
                });
            },
            error: function (e) {
                alert(e);
            }
        });
    }


</script>


@endsection