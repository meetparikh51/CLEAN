  jQuery(document).ready(function($) {
    
    $("ul#menu").superfish({
      delay:800,
      });

    $('#menu').slicknav({
      label: 'Navigation',
      allowParentLinks:true,
      prependTo:'#mobilemenu'
    });

    if ($.browser.msie && $.browser.version < 7) return; // Don't execute code if it's IE6 or below cause it doesn't support it.
    
      $(".fade").fadeTo(1, 1);
      $(".fade").hover(
        function () {
          $(this).fadeTo("fast", 0.6);
        },
        function () {
          $(this).fadeTo("slow", 1);
        }
    );  
	
    // jQuery scrollUp
	$.scrollUp({
		scrollText: '<i class="icon-chevron-up"></i>',
		scrollSpeed: 800,
		zIndex: 99
	});	
    
    	//Fancybox Jquery
	$(".fancybox").fancybox({
		padding: 12,
		openEffect : 'elastic',
		openSpeed  : 250,
		closeEffect : 'elastic',
		closeSpeed  : 250,
		closeClick : true,
		helpers : {
			overlay : {opacity : 0.65},
			media : {}
		}
	});	

	$(".toggle_title").toggle(
		function(){
			$(this).addClass('toggle_active');
			$(this).siblings('.toggle_content').slideDown("fast");
		},
		function(){
			$(this).removeClass('toggle_active');
			$(this).siblings('.toggle_content').slideUp("fast");
		}
	);

	$(".tabs_container").each(function(){
		$("ul.tabs",this).tabs("div.panes > div", {tabs:'li',effect: 'fade', fadeOutSpeed: -400});
	});
	$(".mini_tabs_container").each(function(){
		$("ul.mini_tabs",this).tabs("div.panes > div", {tabs:'li',effect: 'fade', fadeOutSpeed: -400});
	});
	$.tools.tabs.addEffect("slide", function(i, done) {
		this.getPanes().slideUp();
		this.getPanes().eq(i).slideDown(function()  {
			done.call();
		});
	});
  
  /* Contact Form Processing */  
  $('#buttonsend').click( function() {
	
		var name    = $('#contactname').val();
		var subject = $('#contactsubject').val();
		var email   = $('#contactemail').val();
		var message = $('#contactmessage').val();
		var siteurl = $('#siteurl').val();
		var sendto = $('#sendto').val();		
		
		$('.loading').fadeIn('fast');
		
		if (name != "" && subject != "" && email != "" && message != "")
			{

				$.ajax(
					{
						url: siteurl+'/sendemail.php',
						type: 'POST',
						data: "name=" + name + "&subject=" + subject + "&email=" + email + "&message=" + message+ "&sendto=" + sendto,
						success: function(result) 
						{
							$('.loading').fadeOut('fast');
							if(result == "email_error") {
								$('#contactemail').next('.require').text(' !');
							} else {
								$('#contactname, #contactsubject, #contactemail, #contactmessage').val("");
								$('.success-message').show().fadeOut(8000, function(){ $(this).remove(); });	
							}
						}
					}
				);
				return false;
				
			} 
		else 
			{
				$('.loading').fadeOut('fast');
				if(name == "") $('#contactname').next('.require').text(' !');
				if(subject == "") $('#contactsubject').next('.require').text(' !');
				if(email == "" ) $('#contactemail').next('.require').text(' !');
				if(message == "") $('#contactmessage').next('.require').text(' !');
				return false;
			}
	});
	
		$('#contactname, #contactsubject, #contactemail,#contactmessage').focus(function(){
			$(this).next('.require').text(' *');
		});
        
	});	
	
