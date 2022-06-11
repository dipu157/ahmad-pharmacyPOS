<?php
    $this->load->view('backend/header');
    $this->load->view('backend/sidebar'); 
?>
        <div class="page-wrapper">
            <div class="container-fluid p-t-10">
                <div class="flashmessage"></div>
<style>
.file_prev img {height: 44px;width: auto;max-width: 100%;margin-bottom: 0px;margin-right: 0px;margin-top: 0px;}
</style>
                <div class="row m-b-10"> 
                    <div class="col-12">
                        <button type="button" class="btn btn-primary"><i class="fa fa-bars"></i><a href="<?php echo base_url();?>Customer/View" class="text-white"><i class="" aria-hidden="true"></i> Manage Customer </a></button>
                        <button type="button" class="btn btn-primary"><i class="fa fa-bars"></i><a href="<?php echo base_url();?>Customer/Regular" class="text-white"><i class="" aria-hidden="true"></i> Regular Customer </a></button>
                        <button type="button" class="btn btn-primary"><i class="fa fa-bars"></i><a href="<?php echo base_url();?>Customer/Wholesale" class="text-white"><i class="" aria-hidden="true"></i> Wholesale Customer </a></button>
                    </div>
                </div>
                <div class="row">

                    <div class="col-lg-12">

                        <div class="card card-outline-info">
                            <div class="card-header">                                
                                <h4 class="m-b-0 text-white">New Customer <span class="pull-right date-display"><?php date_default_timezone_set("Asia/Dhaka"); echo date("l jS \of F Y h:i:s A") ?></span></h4>
                            </div>
                            <div class="card-body">

                                <form action="" method="post" class="form-horizontal" id="cmodel" enctype="multipart/form-data" accept-charset="utf-8">

                                    <div class="form-body">

                                        <div class="row">

                                            <div class="col-md-6">

                                                <div class="form-group row">

                                                    <label class="col-md-3"></label>

                                                    <div class="col-md-9">

                                                            <input name="ctype" value="Regular" class="ctype  customer-type" data-value="Regular" type="radio" id="radio_1" checked="">

                                                            <label for="radio_1">Regular Customer</label>

                                                    </div>

                                                </div>
                                            </div>

                                            <div class="col-md-6">

                                                <div class="form-group row">

                                                    <label class="col-md-3"></label>

                                                    <div class="col-md-9">

                                                            <input name="ctype" class="active" class="ctype  customer-type" value="Wholesale" data-value="Wholesale" type="radio" id="radio_2">

                                                            <label for="radio_2">Wholesale Customer</label>

                                                    </div>

                                                </div>
                                            </div>

                                            <div class="col-md-6">

                                                <div class="form-group row">

                                                    <label class="control-label text-right col-md-3">Customer Name</label>

                                                    <div class="col-md-9">

                                                        <input type="text" class="form-control cname" name="cname" placeholder="Customer Name" required minlength="1" value="" required>

                                                    </div>

                                                </div>

                                            </div>

                                            <div class="col-md-6">

                                                <div class="form-group row">

                                                    <label class="control-label text-right col-md-3">Phone Number</label>

                                                    <div class="col-md-9">

                                                        <input type="number" class="form-control cphone" name="cphone" placeholder="Phone Number" required>

                                                    </div>

                                                </div>

                                            </div>

                                            <div class="col-md-6">

                                                <div class="form-group row">

                                                    <label class="control-label text-right col-md-3">Email </label>

                                                    <div class="col-md-9">

                                                        <input type="email" class="form-control cemail" name="cemail" placeholder="Email">

                                                    </div>

                                                </div>

                                            </div>

                                            <div class="col-md-6">

                                                <div class="form-group row">

                                                    <label class="control-label text-right col-md-3">Address</label>

                                                    <div class="col-md-9">

                                                        <input type="text" class="form-control caddress" name="caddress" placeholder="address">

                                                    </div>

                                                </div>

                                            </div>

                                            <div class="col-md-6" id="tamount">

                                                <div class="form-group row">

                                                    <label class="control-label text-right col-md-3">Target Amount</label>

                                                    <div class="col-md-9">

                                                        <input type="number" name="tamount" class="form-control tamount" placeholder="">

                                                    </div>

                                                </div>

                                            </div>

                                            <div class="col-md-6" id="cregular">

                                                <div class="form-group row">

                                                    <label class="control-label text-right col-md-3">Regular Discount</label>

                                                    <div class="col-md-9">

                                                        <input type="number" name="rdiscount" class="form-control rdiscount" placeholder="" >

                                                    </div>

                                                </div>

                                            </div>

                                            <div class="col-md-6" id="tdiscount">

                                                <div class="form-group row" >

                                                    <label class="control-label text-right col-md-3">Target Discount</label>

                                                    <div class="col-md-9">

                                                        <input type="number" name="tdiscount" class="form-control tdiscount" placeholder="Discount">

                                                    </div>

                                                </div>

                                            </div>

                                            <div class="col-md-6">

                                                <div class="form-group row">

                                                    <label class="control-label text-right col-md-3">Note</label>

                                                    <div class="col-md-9">

                                                        <textarea class="form-control cnote" name="cnote" rows="1"></textarea>

                                                    </div>

                                                </div>

                                            </div>

                                        </div>

                                        <!--/row-->

                                    </div>

                                    <hr>

                                    <div class="form-actions">

                                        <div class="row justify-content-md-center">

                                            <div class=" col-md-offset-2 col-md-4 ">

                                                <input type="submit" name="" class="btn btn-info" value="Submit">

                                                <button type="button" class="btn btn-inverse">Cancel</button>

                                            </div>

                                        </div>

                                    </div>

                                </form>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

                                    <script>

                                        $(document).ready(function () {

                                            $('#cmodel input').on('change', function(e) {

                                                e.preventDefault(e);

                                                // Get the record's ID via attribute  

                                                var type = $('input[name=ctype]:checked', '#cmodel').attr('data-value');

                                                if(type =='Regular'){

                                                    console.log(type);

                                                    $('#tamount').show();

                                                    $('#cregular').show();

                                                    $('#tdiscount').show();
                                                    $('#storeneme').hide();

                                                } 

                                                else if(type =='Wholesale'){

                                                    console.log(type);

                                                    $('#tamount').hide();

                                                    $('#cregular').hide();

                                                    $('#tdiscount').hide();  
                                                    $('#storeneme').show();  

                                                }

                                            });

                                        });                                                          
                                            
                                    </script> 
    <script>
        
            $('#cmodel').bind('submit',function(e){
            
                e.preventDefault();

            var formval = $('#cmodel');
            var data = new FormData(this);
            console.log(data);
            $.ajax({
                type: "POST",
                enctype: "multipart/form-data",
                // url: "crud/Add_userInfo",
                url: "Save",
                dataType:'json',
                data: data,
                processData: false,
                contentType: false,
                cache: false,
                timeout: 600000,
                
          success: function(response) {
              if(response.status == 'error') { 
              $(".flashmessage").fadeIn('fast').delay(3000).fadeOut('fast').html(response.message);
                  console.log(response);
              } else if(response.status == 'success') {
                  $(".flashmessage").fadeIn('fast').delay(3000).fadeOut('fast').html(response.message);
                  console.log(response);
                window.setTimeout(function() {
                    window.location = response.curl;
                }, 3000);
              }              
          },
          error: function(response) {
            console.error();
          }
            });
            });

    </script>                                               
            <footer class="footer"> © 2017 GenIT Bangladesh </footer>

        </div>

<?php 

    $this->load->view('backend/footer');

?>