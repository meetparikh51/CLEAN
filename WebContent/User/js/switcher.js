  jQuery(document).ready(function($) {
								  
    var imx_templateurl = jQuery('#imx_templateurl').attr('href') + "/";
	var path =  'http://localhost/ecobiz-demo/wp-content/themes/ecobiz-dev/css/skins/';
	
	var styleswitcherstr = ' \
	<div id="style-switcher"> \
	<form id="style-switcher-form">\
	  <div id="style-switcher-heading"><a id="toggleswitcher" href="#"><h4>Style Switcher</h4></a></div>\
	  <div class="switchercontainer"> \
		  <span class="title">Custom Background Color</span> \
		  <div class="clear"></div> \
		  <div id="colorpicker14" class="boxpicker"><div></div></div>\
		  <div class="clear"></div> \
          <hr />\
	  </div> \
      <div class="switchercontainer"> \
		  <span class="title">Skins</span> \
		  <div class="clear"></div> \
            <a rel="669100" id="default" class="color-box" href=""></a> \
            <a rel="4B809E" id="blue" class="color-box" href=""></a> \
            <a rel="DE3828" id="red" class="color-box" href=""></a> \
            <a rel="FF730D" id="orange" class="color-box" href=""></a> \
            <a rel="474747" id="dark" class="color-box" href=""></a> \
            <a rel="B65529" id="brown" class="color-box" href=""></a> \
		  <div class="clear"></div> \
          <hr />\
	  </div> \
	  <div class="switchercontainer"> \
		  <span class="title">Patterns</span> \
		  <div class="clear"></div> \
			<a rel="3px-tile" class="bg-box" href=""></a> \
            <a rel="arches" class="bg-box" href=""></a> \
            <a rel="asfalt-dark" class="bg-box" href=""></a> \
            <a rel="black-linen" class="bg-box" href=""></a> \
            <a rel="brushed-alum-dark" class="bg-box" href=""></a> \
            <a rel="cartographer" class="bg-box" href=""></a> \
            <a rel="checkered-pattern" class="bg-box" href=""></a> \
            <a rel="classy-fabric" class="bg-box" href=""></a> \
            <a rel="crissxcross" class="bg-box" href=""></a> \
            <a rel="crumpled-paper" class="bg-box" href=""></a> \
            <a rel="dark-denim-3" class="bg-box" href=""></a> \
            <a rel="dark-mosaic" class="bg-box" href=""></a> \
            <a rel="diagmonds" class="bg-box" href=""></a> \
            <a rel="diagonal-striped-brick" class="bg-box" href=""></a> \
            <a rel="diagonales-decalees" class="bg-box" href=""></a> \
            <a rel="diamond-upholstery" class="bg-box" href=""></a> \
            <a rel="escheresque" class="bg-box" href=""></a> \
            <a rel="flower-swirl10" class="bg-box" href=""></a> \
            <a rel="flower-swirl3" class="bg-box" href=""></a> \
            <a rel="flower-swirl5" class="bg-box" href=""></a> \
            <a rel="flower-swirl7" class="bg-box" href=""></a> \
            <a rel="football-no-lines" class="bg-box" href=""></a> \
            <a rel="fresh-snow" class="bg-box" href=""></a> \
            <a rel="gplay" class="bg-box" href=""></a> \
            <a rel="gradient-squares" class="bg-box" href=""></a> \
            <a rel="graphy" class="bg-box" href=""></a> \
            <a rel="gravel" class="bg-box" href=""></a> \
            <a rel="grid1" class="bg-box" href=""></a> \
            <a rel="grid2" class="bg-box" href=""></a> \
            <a rel="grilled-noise" class="bg-box" href=""></a> \
            <a rel="groovepaper" class="bg-box" href=""></a> \
            <a rel="light-wool" class="bg-box" href=""></a> \
            <a rel="lined-paper-2" class="bg-box" href=""></a> \
            <a rel="pw-pattern" class="bg-box" href=""></a> \
            <a rel="random-grey-variations" class="bg-box" href=""></a> \
            <a rel="shattered-dark" class="bg-box" href=""></a> \
            <a rel="shley-tree-1" class="bg-box" href=""></a> \
            <a rel="shley-tree-2" class="bg-box" href=""></a> \
            <a rel="striped" class="bg-box" href=""></a> \
            <a rel="subtle-grey" class="bg-box" href=""></a> \
            <a rel="subtle-grunge" class="bg-box" href=""></a> \
            <a rel="subtle-stripes" class="bg-box" href=""></a> \
            <a rel="subtle-white-feathers" class="bg-box" href=""></a> \
            <a rel="subtle-zebra-3d" class="bg-box" href=""></a> \
            <a rel="tileable-wood-colored" class="bg-box" href=""></a> \
            <a rel="white-diamond" class="bg-box" href=""></a> \
            <a rel="wood-pattern" class="bg-box" href=""></a> \
            <a rel="wood" class="bg-box" href=""></a> \
		  <div class="clear"></div> \
	  </div> \
	  <div class="switchercontainer"> \
		  <a href="#" id="switcher-reset">Reset</a> \
		  <div class="clear"></div> \
	  </div> \
	  </form>\
	</div> \
	';
	
	jQuery("body").prepend( styleswitcherstr );
	
	jQuery("#toggleswitcher").click(function(e){
		jQuery("#style-switcher").toggleClass("active");
	});
    
	/*************** COLOR PICKER ******************/
	
	jQuery('#colorpicker14').ColorPicker({
			onShow: function (colpkr) {
				jQuery(colpkr).fadeIn("fast");
				return false;
			},
			onHide: function (colpkr) {
				jQuery(colpkr).fadeOut("fast");
				return false;
			},
			onChange: function (hsb, hex, rgb) {
				
				var bgbody = hex;
				
				jQuery('#colorpicker14 div').css('backgroundColor', '#' + hex);
				
				jQuery('body').css('backgroundColor', '#' + bgbody);
	           	jQuery.cookie("imediapixel_cookie_bgbody", bgbody, { path: '/' });
			},
      color: '#5D8500'
	  
    });
	
	jQuery('#colorpicker14 div').css({"background": '#5D8500'});
	
	
	
	/*************** END COLOR PICKER ******************/
	
    /*************** SKINS BOX **************/
    jQuery('#style-switcher a.color-box').each(function (i) {
        var a = jQuery(this);
        a.css({
            backgroundColor: '#' + a.attr('rel')
        })
    })  
	/*************** END SKINS BOX **************/
    
    /********** color-box.click ***************/
    jQuery('#style-switcher a.color-box').click(function (e) {
      e.preventDefault();
      colorChoice = $(this).attr('id');
	  jQuery('link#imediapixel-demo-theme-css').attr('href', path + colorChoice +'.css');
      jQuery.cookie("imediapixel_cookie_skin",colorChoice, { path: '/' });
    });
  /********** end color-box.click ***********/
  
	/*************** BACKGROUND PATTERN BOX **************/
	jQuery('#style-switcher a.bg-box').each(function (i) {
		var backgroundUrl = 'url('+imx_templateurl+'/images/pattern/' + jQuery(this).attr('rel') + '.png)';
		var a = jQuery(this);
		a.css({
			backgroundImage: backgroundUrl,
	  		backgroundRepeat: "repeat"
		})
	});
	/*************** END BACKGROUND PATTERN BOX **************/
    
    
  /********** bg-box.click ***************/
  jQuery('#style-switcher a.bg-box').click(function (e) {
      e.preventDefault();
      var backgroundUrl = 'url('+imx_templateurl+'images/pattern/' + jQuery(this).attr('rel') + '.png)';
      var background_image      = jQuery.cookie("imediapixel_cookie_image");
      jQuery('body.bgpattern').css({
          backgroundImage: backgroundUrl,
          backgroundRepeat: "repeat"
      });
    jQuery.cookie("imediapixel_cookie_pattern",backgroundUrl, { path: '/' });
    jQuery.removeCookie(background_image); 
  });
  /********** end bg-box.click ***********/
  
  
  /*
	jQuery('#style-switcher a.bgimage-box').each(function (i) {
		var backgroundImageUrl = 'url('+imx_templateurl+'images/' + jQuery(this).attr('rel') + '.jpg)';
		var a = jQuery(this);
		a.css({
			backgroundImage: backgroundImageUrl,
	  		backgroundRepeat: "no-repeat"
		})
	});
	
  jQuery('#style-switcher a.bgimage-box').click(function (e) {
      e.preventDefault();
      var backgroundImageUrl = 'url('+imx_templateurl+'/images/' + jQuery(this).attr('rel') + '.jpg)';
      jQuery('body.bgimage').css({
          backgroundImage: backgroundImageUrl,
          backgroundRepeat: "no-repeat"
      });
    jQuery.cookie("imediapixel_cookie_image",backgroundImageUrl, { path: '/' });
  });
  */
    
  var bgbody	 		    = jQuery.cookie("imediapixel_cookie_bgbody");
  var background_pattern    = jQuery.cookie("imediapixel_cookie_pattern");
  var background_skin       = jQuery.cookie("imediapixel_cookie_skin");
  
  
  if (bgbody) {
	  jQuery('#colorpicker14 div').css('backgroundColor', '#' + bgbody);
      jQuery('body').css({
        backgroundColor: '#' + bgbody,
      });
  }
  

  if (background_pattern) { 
      jQuery('body.bgpattern').css({
        backgroundImage: background_pattern,
        backgroundRepeat: "repeat"
      });
  }
  
  if (background_skin) {
      jQuery('link#imediapixel-demo-theme-css').attr('href', path + background_skin +'.css');
  }
  
  jQuery("#switcher-reset").click(function(){
		var bgbody = "5D8500";
		
		jQuery('#colorpicker14 div').css({"background": '#5D8500'});
		jQuery('body').css('backgroundColor', '#' + bgbody); 
		
		var backgroundUrl = 'url('+imx_templateurl+'/images/pattern/grid2.png)';
        
		jQuery('body.bgpattern').css({
		  	backgroundImage: backgroundUrl,
		  	backgroundRepeat: "repeat"
	  	});
        // reset color property
		jQuery('link#imediapixel-demo-theme-css').attr('href', path +'default.css');
        
        // -- reset cookie
		jQuery.removeCookie('bgbody', { path: '/' });
		jQuery.removeCookie('background_pattern', { path: '/' });
		jQuery.removeCookie('background_skin', { path: '/' });                 
		
  });
         
});   