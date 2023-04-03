@component('layouts.app')
@slot('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Roles VitalWork
                </div>
                <div class="panel-body">
                    <p>
                        <strong>
                            Nombre
                        </strong>
                        {{$role->name}}
                    </p>
                   
                    
                   
                   
                </div>
            </div>
        </div>
    </div>
</div>
@endcomponent
