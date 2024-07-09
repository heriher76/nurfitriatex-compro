<!DOCTYPE html>
<html lang="en">
<head>
<!--====== Meta Tags ======-->
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="@yield('head_description', getcong('site_description'))">
<meta name="keywords" content="" />
<meta name="author" content="">
<link rel="canonical" href="@yield('head_url', url('/'))">
<meta property="og:type" content="article" />
<meta property="og:title" content="@yield('head_title',  getcong('site_name'))" />
<meta property="og:description" content="@yield('head_description', getcong('site_description'))" />
<meta property="og:image" content="@yield('head_image', url('/upload/logo.png'))" />
<meta property="og:url" content="@yield('head_url', url('/'))" />
<meta property="og:image:width" content="1024" />
<meta property="og:image:height" content="1024" />
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:image" content="@yield('head_image', url('/upload/logo.png'))">
<link rel="image_src" href="@yield('head_image', url('/upload/logo.png'))">

<!--====== Site Title ======-->
<title>@yield('head_title', getcong('site_name'))</title>

<!--====== Favicon Icon ======-->
<link rel="shortcut icon" href="{{ URL::asset('upload/'.getcong('site_favicon')) }}" type="img/png" />

<!--====== LOAD CSS ======-->
<link rel="stylesheet" href="{{ URL::asset('assets/css/animate.min.css') }}" />
<link rel="stylesheet" href="{{ URL::asset('assets/css/bootstrap.min.css') }}" />
<link rel="stylesheet" href="{{ URL::asset('assets/css/slick.min.css') }}" />
<link rel="stylesheet" href="{{ URL::asset('assets/css/main-slider.css') }}" />
<link rel="stylesheet" href="{{ URL::asset('assets/css/lity.min.css') }}" />
<link rel="stylesheet" href="{{ URL::asset('assets/css/style.css') }}" />
<link rel="stylesheet" href="{{ URL::asset('assets/css/responsive.css') }}" />

<!--====== Google Fonts ======-->
<link rel="stylesheet" href="{{ URL::asset('assets/fonts/fontawesome/css/all.min.css') }}" />
<link rel="stylesheet" href="{{ URL::asset('assets/fonts/flaticon/css/flaticon.css') }}" />

{!!getcong('site_header_code')!!}

</head>

<body>
	
<!--====== Start Preloader ======-->
<div class="preloader">
  <div class="lds-ellipsis">
    <div></div>
    <div></div>
    <div></div>    
  </div>
</div>
<!--====== End Preloader ======-->
 
 @include("_particles.header")
		
		@yield("content") 


 @include("_particles.footer")

<a href="#" id="back-to-top" title="Back to top"><i class="far fa-long-arrow-up"></i></a> 

 

<!--====== Jquery ======-->
<script src="{{ URL::asset('assets/js/jquery-3.6.0.min.js') }}"></script>
<script src="{{ URL::asset('assets/js/bootstrap.min.js') }}"></script>
<script src="{{ URL::asset('assets/js/smooth-scroll.js') }}"></script>
<script src="{{ URL::asset('assets/js/slick.min.js') }}"></script>
<script src="{{ URL::asset('assets/js/modernizr-2.6.2.min.js') }}"></script>
<script src="{{ URL::asset('assets/js/mostslider.js') }}"></script>
<script src="{{ URL::asset('assets/js/isotope.pkgd.min.js') }}"></script>
<script src="{{ URL::asset('assets/js/imagesloaded.pkgd.min.js') }}"></script>
<script src="{{ URL::asset('assets/js/jquery.inview.min.js') }}"></script>
<script src="{{ URL::asset('assets/js/jquery.easypiechart.min.js') }}"></script>
<script src="{{ URL::asset('assets/js/wow.min.js') }}"></script>
<script src="{{ URL::asset('assets/js/lity.min.js') }}"></script>
<script src="{{ URL::asset('assets/js/custome-script.js') }}"></script>
<script type="text/javascript" src="{{ URL::asset('assets/js/bootstrap-validation.js') }}"></script>

<script>
$('.filtering').slick({
  slidesToShow: 4,
  slidesToScroll: 4
});

var filtered = false;

$('.js-filter').on('click', function(){
  if (filtered === false) {
    $('.filtering').slick('slickFilter',':even');
    $(this).text('Unfilter Slides');
    filtered = true;
  } else {
    $('.filtering').slick('slickUnfilter');
    $(this).text('Filter Slides');
    filtered = false;
  }
});

$(document).ready(function(){
	var slider = $("#slider").mostSlider({
		aniMethod: 'auto',
	});
});

$('a.page-scroll').click(function() {
	if (location.pathname.replace(/^\//,'') === this.pathname.replace(/^\//,'') && location.hostname === this.hostname) {
	  var target = $(this.hash);
	  target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
	  if (target.length) {
		$('html,body').animate({
		  scrollTop: target.offset().top
		}, 1000);
		return false;
	  }
	}
});

$(document).ready(function() {
  if ($('#back-to-top').length) {
    var scrollTrigger = 100, // px
        backToTop = function () {
            var scrollTop = $(window).scrollTop();
            if (scrollTop > scrollTrigger) {
                $('#back-to-top').addClass('show');
            } else {
                $('#back-to-top').removeClass('show');
            }
        };
    backToTop();
    $(window).on('scroll', function () {
        backToTop();
    });
    $('#back-to-top').on('click', function (e) {
        e.preventDefault();
        $('html,body').animate({
            scrollTop: 0
        }, 900);
    });
  }
});

$(".brand-item-logo").slick({
	arrows: false,
	dots: false,
	infinite: true,
	centerMode: true,
	speed: 500,
	slidesToShow: 5,
	slidesToScroll: 2,
	autoplay: true,
	autoplaySpeed: 2000,
	responsive: [
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 4,
        slidesToScroll: 2,
        infinite: true,
      }
    },
    {
      breakpoint: 600,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2
      }
    },
    {
      breakpoint: 480,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1
      }
    }
	]
  });
</script>

<script>
 
  $(function() {

    $("input,textarea").jqBootstrapValidation({
        preventSubmit: true,
        submitError: function($form, event, errors) {
            // additional error messages or events
        },
        submitSuccess: function($form, event) {
            event.preventDefault(); // prevent default submit behaviour
            // get values from FORM
            var token = $("input[name=_token]").val();
            var name = $("input#name").val();
            var email = $("input#email").val();
            var phone = $("input#phone").val();
            var message = $("textarea#message").val();
            var firstName = name; // For Success/Failure Message
            // Check for white space in name for Success/Fail message
            if (firstName.indexOf(' ') >= 0) {
                firstName = name.split(' ').slice(0, -1).join(' ');
            }
            $.ajax({
                url: "./contact_send",
                type: "POST",
                data: {
                    _token: token,
                    name: name,
                    email: email,
                    phone: phone,
                    message: message
                },                 
                cache: false,
                beforeSend: function() {
							    $('#loading_contact').html("<img src='{{ URL::asset('assets/img/loading_animated.gif') }}' width='50' />");

							    //$("#contact_submit"). attr("disabled", true);
							    $('#contact_submit').hide();	
							  },
                success: function() {
                    // Success message
                    $('#success').html("<div class='alert alert-success'>");
                    $('#success > .alert-success').html("<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;")
                        .append("</button>");
                    $('#success > .alert-success')
                        .append("<strong>Your message has been sent. </strong>");
                    $('#success > .alert-success')
                        .append('</div>');

                    $('#loading_contact').hide();	
                    $('#contact_submit').show();	

                    //clear all fields
                    $('#contactForm').trigger("reset");
                },
                error: function() {
                    // Fail message
                    $('#success').html("<div class='alert alert-danger'>");
                    $('#success > .alert-danger').html("<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;")
                        .append("</button>");
                    $('#success > .alert-danger').append("<strong>Sorry " + firstName + ", it seems that my mail server is not responding. Please try again later!");
                    $('#success > .alert-danger').append('</div>');

                    $('#loading_contact').hide();	

                    //clear all fields
                    $('#contactForm').trigger("reset");
                    $('#contact_submit').show();	
                },
            })
        },
        filter: function() {
            return $(this).is(":visible");
        },
    });

    $("a[data-toggle=\"tab\"]").click(function(e) {
        e.preventDefault();
        $(this).tab("show");
    });
});


/*When clicking on Full hide fail/success boxes */
$('#name').focus(function() {
    $('#success').html('');
});

 </script> 

{!!getcong('site_footer_code')!!}
 
</body>
</html>