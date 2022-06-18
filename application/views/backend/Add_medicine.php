<?php
    $this->load->view('backend/header');
    $this->load->view('backend/sidebar'); 
?>

        <div class="page-wrapper">
<style>
.file_prev img {height: 44px;width: auto;max-width: 100%;margin-bottom: 0px;margin-right: 0px;margin-top: 0px;}
</style>

            <div class="container-fluid p-t-10">

            <div class="flashmessage"></div>

                <div class="row m-b-10"> 

                    <div class="col-12">

                        <button type="button" class="btn btn-primary"><i class="fa fa-bars"></i><a href="<?php echo base_url('Medicine/View');?>" class="text-white"><i class="" aria-hidden="true"></i> Manage Medicine </a></button>

                    </div>

                </div>

                <div class="row">

                    <div class="col-lg-12">

                        <div class="card card-outline-info">
                            <div class="card-header">                                
                                <h4 class="m-b-0 text-white">New Medicine <span class="pull-right"><?php date_default_timezone_set("Asia/Dhaka"); echo date("l jS \of F Y h:i:s A") ?></span></h4>
                            </div>
                            <div class="card-body">
                                <form action="" method="post" class="form-horizontal" id="formid" enctype="multipart/form-data" accept-charset="utf-8">

                                    <div class="form-body">

                                        <span class="m-t-30 m-b-40"></span>

                                        <div class="row">
                                            <div class="col-md-6 col-sm-12">

                                                <div class="form-group row">

                                                    <label class="control-label text-right col-md-3 col-sm-12">Company Name</label>

                                                    <div class="col-md-9 col-sm-12">
                                                        <input type="text" class="form-control supplier_name" name="supplier_name" placeholder="Supplier Name..."  id="supplier_name" autocomplete="off"> 
                                                        <input type="hidden" class="form-control supplier" name="supplier"  id="supplier" autocomplete="off"> 
                                                    </div>

                                                </div>

                                            </div>

                                            <div class="col-md-6 col-sm-12">

                                                <div class="form-group row">
                                                    <label class="control-label text-right col-md-3 col-sm-12">Product Name</label>
                                                    <div class="col-md-9 col-sm-12">
                                                        <input type="text" name="product_name" class="form-control product_name" placeholder="Product Name" required minlength="1">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group row">
                                                    <label class="control-label text-right col-md-3 col-sm-12">Generic Name</label>
                                                    <div class="col-md-9 col-sm-12">
                                                        <input type="text" name="generic_name" class="form-control generic_name" placeholder="Generic Name" required>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group row">
                                                    <label class="control-label text-right col-md-3 col-sm-12">Barcode Number</label>
                                                    <div class="col-md-9 col-sm-12">
                                                        <input type="number" name="barcode" class="form-control barcode" placeholder="" value="<?php echo rand(100000000,1500000000)?>" required >
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group row">
                                                    <label class="control-label text-right col-md-3 col-sm-12">Strength</label>
                                                    <div class="col-md-9 col-sm-12">
                                                        <input type="text" name="strength" class="form-control strength" placeholder="Strength" required>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group row">
                                                    <label class="control-label text-right col-md-3 col-sm-12">Form</label>
                                                    <div class="col-md-9 col-sm-12">
                                                        <select name="formSelect" class="select2 formSelect" id="" style="width:100%" required>
                                                            <option value="Tablet">Tablet</option>
                                                            <option value="Capsules">Capsule</option>
                                                            <option value="Injection">Injection</option>
                                                            <option value="Eye Drop">Eye Drop</option>
                                                            <option value="Suspension">Suspension</option>
                                                            <option value="Cream">Cream</option>
                                                            <option value="Saline">Saline</option>
                                                            <option value="Inhaler">Inhaler</option>
                                                            <option value="Powder">Powder</option>
                                                            <option value="Spray">Spray</option>
                                                            <option value="Paediatric Drop">Paediatric Drop</option>
                                                            <option value="Nebuliser Solution">Nebuliser Solution</option>
                                                            <option value="Powder for Suspension">Powder for Suspension</option>
                                                            <option value="Nasal Drops">Nasal Drops</option>
                                                            <option value="Eye Ointment">Eye Ointment</option>
                                                        </select>

                                                    </div>

                                                </div>

                                            </div>


                                            <div class="col-md-6 col-sm-12">

                                                <div class="form-group row">

                                                    <label class="control-label text-right col-md-3 col-sm-12">Trade Price</label>

                                                    <div class="col-md-9 col-sm-12">

                                                        <input type="number" name="trade_price" class="form-control trade_price" placeholder="Trade Price" required>

                                                    </div>

                                                </div>

                                            </div>

                                            <div class="col-md-6 col-sm-12">

                                                <div class="form-group row">

                                                    <label class="control-label text-right col-md-3 col-sm-12">VAT</label>

                                                    <div class="col-md-9 col-sm-12">

                                                        <input type="number" name="vat" class="form-control vat" placeholder="VAT">

                                                    </div>

                                                </div>

                                            </div>

                                            <div class="col-md-6 col-sm-12">

                                                <div class="form-group row">

                                                    <label class="control-label text-right col-md-3 col-sm-12">M.R.P.</label>

                                                    <div class="col-md-9 col-sm-12">

                                                        <input type="number" name="mrp" class="form-control mrp" placeholder="M.R.P." required>

                                                    </div>

                                                </div>

                                            </div>
                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group row">
                                                    <label class="control-label text-right col-md-3 col-sm-12">Box Size</label>
                                                    <div class="col-md-9 col-sm-12">
                                                        <input type="number" name="box_size" class="form-control boxsize" placeholder="Box Size" required>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-md-6 col-sm-12">

                                                <div class="form-group row">

                                                    <label class="control-label text-right col-md-3 col-sm-12">Box Pirce</label>

                                                    <div class="col-md-9 col-sm-12">

                                                        <input type="number" name="box_price" class="form-control totalboxprice box_price" placeholder="Box Pirce">

                                                    </div>

                                                </div>

                                            </div>

                                            <input type="hidden" name="expire_date" class="form-control expire_date" value="2030-10-19">

                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group row">
                                                    <label class="control-label text-right col-md-3 col-sm-12">Short Quantity</label>
                                                    <div class="col-md-9 col-sm-12">
                                                        <input type="number" name="shortstock" class="form-control shortstock" placeholder="Short Quantity" id="shortstock" required>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group row">
                                                    <label class="control-label text-right col-md-3 col-sm-12">Side Effect</label>
                                                    <div class="col-md-9 col-sm-12">
                                                        <textarea class="form-control side_effect" name="side_effect" rows="1"></textarea>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group row">
                                                    <label class="col-md-3 col-sm-12"></label>
                                                    <div class="col-md-9 col-sm-12">
                                                        <input name="favourite" class="custom-control-input favourite" value="1" type="checkbox" id="regular_customer">
                                                        <label for="regular_customer">Add To Favourite</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group row">
                                                    <label class="control-label text-right col-md-3 col-sm-12">Discount </label>
                                                    <div class="col-md-9 col-sm-12">
                                                        <input type="radio" name="discount" class="custom-control-input discount" value="YES"  id="discount_yes" checked>
                                                        <label for="discount_yes">Yes</label>
                                                        <input type="radio" name="discount" class="custom-control-input discount" value="NO"  id="discount_no">
                                                        <label for="discount_no">No</label>
                                                    </div>
                                                </div>
                                            </div>   

                                        </div>

                                        <!--/row-->

                                    </div>

                                    <hr>

                                    <div class="form-actions text-center">

                                        <div class="row">

                                            <div class=" col-md-12 ">

                                                <div class="form-group">
                                                    <button type="submit" class="btn btn-info">Submit</button>

                                                <button type="button" class="btn btn-inverse">Cancel</button> 
                                                </div>   

                                                <br>
                                                <br>

                                            </div>

                                        </div>

                                    </div>

                                </form>

                            </div>

                        </div>

                    </div>

                </div>

            </div>           

            <footer class="footer"> © Ahmad Pharma Bangladesh </footer>

        </div>    
<script>
$( function() {
$(this.target).find('input').autocomplete();
 $( "#supplier_name" ).autocomplete({
  source: function( request, response ) {
   // Fetch data
   $.ajax({
    url: "<?php echo base_url() ?>purchase/GetSupplierByid",
    type: 'post',
    dataType: "json",
    data: {
     search: request.term
    },
    success: function(data) {
     response( data );
    }
   });
  },
  select: function (event, ui) {
   // Set selection
   $('#supplier_name').val(ui.item.label); // display the selected text
   $('#supplier').val(ui.item.value); // display the selected text
    $("#supplier_name").autocomplete('close');
   return false;
  },
 });
 });
</script> 
        
    <script>
              
            $('#formid').bind('submit',function(e){
          
                e.preventDefault();

            var formval = $('#formid');
            var data = new FormData(this);
            console.log(data);
            $.ajax({
                type: "POST",
                enctype: "multipart/form-data",
                url: "Save",
                dataType:'json',
                data: data,
                processData: false,
                contentType: false,
                cache: false,
                timeout: 600000,
                
                  success: function(response) {

                      if(response.status == 'error') { 

                      $(".flashmessage").fadeIn('fast').delay(1000).fadeOut('fast').html(response.message);
                          console.log(response);

                      } else if(response.status == 'success') {

                        alert("Medicine Add Successfully");
                        
                          $(".flashmessage").fadeIn('fast').delay(1000).fadeOut('fast').html(response.message);
                          console.log(response);
                        window.setTimeout(function() {
                            window.location = response.curl;
                        }, 3000);
                      }              
                  },


                  error: function(xhr, status, error) {
                      var err = eval("(" + xhr.responseText + ")");
                      alert(err.Message);
                    }


                  // error: function(response) {
                    
                  //   // alert("Medicine Add Successfully on Error");

                  //   // $(".flashmessage").fadeIn('fast').delay(3000).fadeOut('fast').html(response.message);
                  //   //       console.log(response);
                  //   // window.setTimeout(function() {
                  //   //         location.reload();
                  //   //     }, 3000);
                  //   console.error();
                  // }
                });
                
            });

    </script>
                <script type="text/javascript">
                    $('.boxsize , .mrp').on('input', function() {
                        var boxprice = $('.boxsize').val();
                        var mrp = $('.mrp').val();
                        console.log('mrp');
                        $('.totalboxprice').val((boxprice * mrp ? boxprice * mrp : 0).toFixed(2));
        
                    });
                </script>


<script type="text/javascript">
    $(document).ready(function () {
	$(".js-supplier-data-ajax").select2({

	    ajax: {
	        url: "<?php echo base_url(); ?>purchase/GetSupplierByid",
	        dataType: 'json',
	        type: "GET",
	        data: function (term) {
	            return {
	                param: term.term
	            };
	        },
	        processResults: function (data) {
	            
	            return {
		            results: $.map(data, function (item) {
		                return {
		                    text: item.s_name,
		                    id: item.s_id
		                };
		            })
		        };
	        },
	    }
	});
	});
</script>

<?php 

    $this->load->view('backend/footer');

?>