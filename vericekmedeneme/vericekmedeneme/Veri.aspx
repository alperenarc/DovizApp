﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Veri.aspx.cs" Inherits="vericekmedeneme.Veri" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>App Layers</title>
    
	<!-- Bootstrap CSS -->
	<link href="AppLayers/css/bootstrap.min.css" rel="stylesheet">
     <!-- CSS Custom -->
    <link rel="stylesheet" type="text/css" href="AppLayers/css/style.css">
    
    <!-- favicon Icon -->
    <!--<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
	<link rel="icon" href="images/favicon.ico" type="image/x-icon">-->
    <!-- CSS Plugins -->
    <link href="AppLayers/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="AppLayers/css/animate.min.css">
    <!-- Google Fonts -->
	<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,300,700' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>
     <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    


<%--    <script src="jquery-1.3.2.min.js"></script>
<script>
(function($){
    yenile(); //
})(jQuery);
 
function yenile(){
    $.ajax({ 
        type: "GET", 
	url: "veri.aspx",
	data: "manuel=otomatik", 
	success: function(data){
	    if (data){ 
		$('#deger').fadeOut('fast',function(){
		    $(this).html(data);
		}).fadeIn();
            }
            setTimeout(yenile, '2000'); //5 saniye
        }
    });
}
</script>--%>


</head>
<body>
    <form id="form1" runat="server">
  



<section id="pricing" class="price_table_bg">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="section_heading section_heading_2">
					<h2> Doviz Kurları </h2>
				
					<h4> Doviz fiyatları değiştikçe bildirim almak ister misiniz ?</h4>
					<div class="section_sub_btn">
									<button class="btn btn-default" type="submit">Bildirim Al !</button>	
								</div>
				</div>
							
						<div class="col-md-4">	
							<div class="table-1">
									
								<h3> Dolar </h3>
									
									<div class="price_month">

                                        <div id="deger">
										<span class="round">
                                            
                                                <h3><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> </h3>
                                            
											<span>
											 <p> /TL </p>
											</span>
										</span>
										</div>

									</div>	
									
								
								
								<div class="section_sub_btn">
									<button class="btn btn-default" type="submit">Geçmiş istatistikler</button>	
								</div>
							</div>
						</div>
						
						<div class="col-md-4">	
							<div class="table-1">
									
								
								<h3> Euro </h3>
									
									<div class="price_month">
										<span class="round">
											<h3> <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> </h3>
											<span>
											 <p> /TL </p>
											</span>
										</span>
										
									</div>	
									
								
								
								<div class="section_sub_btn">
									<button class="btn btn-default" type="submit"> Geçmiş istatistikler</button>	
								</div>
							</div>
						</div>
						
						<div class="col-md-4">	
							<div class="table-1">
									
								
								<h3> Gram Altın </h3>
									
									<div class="price_month">
										<span class="round">
											<h3> <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label> </h3>
											<span>
											 <p> /TL </p>
											</span>
										</span>
										
									</div>	
									
								
								
								<div class="section_sub_btn">
									<button class="btn btn-default" type="submit">Geçmiş istatistikler</button>	
								</div>
							</div>
						</div>
						
				
			</div>
		</div>
	</div>
</section>
           

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/interface.js"></script> 
<script type="text/javascript"> 
	$(document).ready(function(){
	$("#menu_slide").click(function(){
		$("#navbar").slideToggle('normal');
	});
	});
 </script>
<!--Menu Js Right Menu-->
<script type="text/javascript">
$(document).ready(function(){
  $('#navbar > ul > li:has(ul)').addClass("has-sub");
  $('#navbar > ul > li > a').click(function() {
    var checkElement = $(this).next();
    $('#navbar li').removeClass('dropdown');
    $(this).closest('li').addClass('dropdown');	
    if((checkElement.is('ul')) && (checkElement.is(':visible'))) {
      $(this).closest('li').removeClass('dropdown');
      checkElement.slideUp('normal');
    }
    if((checkElement.is('ul')) && (!checkElement.is(':visible'))) {
      $('#navbar ul ul:visible').slideUp('normal');
      checkElement.slideDown('normal');
    }
    if (checkElement.is('ul')) {
      return false;
    } else {
      return true;	
    }		
  });
});
<!--end-->
</script>
<script type="text/javascript">	
$("#navbar").on("click", function(event){
    event.stopPropagation();
});
$(".dropdown-menu").on("click", function(event){
    event.stopPropagation();
});
$(document).on("click", function(event){
    $(".dropdown-menu").slideUp('normal');
});	

$(".navbar-header").on("click", function(event){
    event.stopPropagation();
});
$(document).on("click", function(event){
    $("#navbar").slideUp('normal');
});		
</script>


    </form>
</body>
</html>

