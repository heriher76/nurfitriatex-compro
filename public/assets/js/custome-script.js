(function ($) {
'use strict';

// Main Menu
function mainMenu() {
	const navbarToggler = $('.navbar-toggler'),
		navMenu = $('.nav-menu'),
		mobilePanel = $('.mobile-nav-panel'),
		mobilePanelMenu = $('.mobile-menu'),
		panelOverly = $('.panel-overlay'),
		navClose = $('.panel-close'),
		canvasBtn = $('.off-canvas-btn'),
		canvasPanel = $('.off-canvas-panel');

	navbarToggler.on('click', function(e){
		e.preventDefault();
		mobilePanel.toggleClass('show-panel');
	});
	canvasBtn.on('click', function(e){
		e.preventDefault();
		canvasPanel.toggleClass('show-panel');
	});
	navClose.on('click', function(e){
		e.preventDefault();
		mobilePanel.removeClass('show-panel');
		canvasPanel.removeClass('show-panel');
	});
	panelOverly.on('click', function(e){
		e.preventDefault();
		mobilePanel.removeClass('show-panel');
		canvasPanel.removeClass('show-panel');
	});

	navMenu.find('li a').each(function(){
		if ($(this).next().length > 0) {
			$(this).append('<span class="dd-trigger"><i class="fas fa-angle-down"></i></span>');
		}
	});

	mobilePanelMenu.find('li a').each(function(){
		if ($(this).next().length > 0) {
			$(this).append('<span class="dd-trigger"><i class="fas fa-angle-down"></i></span>');
		}
	});

	mobilePanelMenu.find('.dd-trigger').on('click', function(e){
		e.preventDefault();
		$(this).parent().parent('li').children('ul.submenu').stop(true, true).slideToggle(350);
		$(this).toggleClass('submenu-opened');
	});
}

// Testimonials Slider One
function testimonialSliderOne(){
	const slider = $('.testimonial-slider-one');

	slider.slick({
		infinite: true,
		dots: true,
		arrows: false,
		speed: 500,
		slidesToShow: 1,
		slidesToScroll: 1,
		autoplay: false,
		autoplaySpeed: 5000,
	});
}

// Testimonials Slider Two
function testimonialSliderTwo(){
	const slider = $('.testimonial-slider-two');

	slider.slick({
		infinite: true,
		dots: true,
		arrows: false,
		speed: 500,
		slidesToShow: 2,
		slidesToScroll: 1,
		autoplay: false,
		autoplaySpeed: 5000,
		responsive: [
			{
				breakpoint: 992,
				settings: {
					slidesToShow: 1,
				}
			},
		]
	});
}

// Counter Up
function counterUp(){
	$('.counter-item, .single-progress-bar').on('inview', function (event, isInView){
		if (isInView) {
			$(this).find('.counter').each(function () {
				var $this = $(this);
				$({
					Counter: 0
				}).animate({
					Counter: $this.text()
				}, {
					duration: 3000,
					easing: 'swing',
					step: function () {
						$this.text(Math.ceil(this.Counter));
					},
				});
			});
			$(this).unbind('inview');
		}
	});
}

// Progress Bar
function progressBar(){
	$('.progress-bar-item').on('inview', function (event, isInView){
		if (isInView) {
			$(this).find('.progress-line').each(function () {
				const percentage = $(this).data('percentage'),
					lineInner = $(this).find('.line'),
					widthCss = percentage + '%';

				lineInner.width(widthCss);
			});
			$(this).unbind('inview');
		}
	});
}

// Active Isotope
function activeIsotope(){
	$('.portfolio-section').imagesLoaded(function(){
		var items = $('.filter-items').isotope();

		$('.portfolio-filter').on('click', 'li', function(e){
			var filterValue = $(this).attr('data-filter');
			items.isotope({
				filter: filterValue
			});
		});
		$('.portfolio-filter li').on('click', function (event){
			$('.portfolio-filter .active').removeClass('active');
			$(this).addClass('active');
			event.preventDefault();
		});
	});
}

// Sticky Header
function stickyHeader(){
	const scroll_top = $(window).scrollTop(),
		siteHeader = $('.main-nav-header');

	if (siteHeader.hasClass('sticky-header')) {
		if (scroll_top < 110) {
			siteHeader.removeClass('sticky-on');
		} else {
			siteHeader.addClass('sticky-on');
		}
	}
}

// Preloader
function preloader(){
	$('.preloader').delay(333).fadeOut(333);
}

// Portfolio Slider
function portfolioSlider(){
	const slider = $('.portfolio-slider');

	slider.slick({
		infinite: true,
		dots: false,
		arrows: false,
		speed: 500,
		slidesToShow: 3,
		slidesToScroll: 1,
		autoplay: false,
		autoplaySpeed: 5000,
		responsive: [
			{
				breakpoint: 992,
				settings: {
					slidesToShow: 2,
				}
			},
			{
				breakpoint: 768,
				settings: {
					slidesToShow: 1,
				}
			},
		]
	});
}

// Accordion Class Toggle
function accordionClassToggle(){
	$('.accordion .accordion-title').on('click', function (event){
		$('.accordion .accordion-active').removeClass('accordion-active');
		$(this).parent().addClass('accordion-active');

		event.preventDefault();
	});
}

// Document Ready
$(document).ready(function(){
	mainMenu();
	testimonialSliderOne();
	testimonialSliderTwo();
	counterUp();
	progressBar();
	activeIsotope();
	portfolioSlider();
	accordionClassToggle();
});

// Window Scroll
$(window).on('scroll', function(){
	stickyHeader();
});

// Window Load
$(window).on('load', function(){
	preloader();
	new WOW().init();
});
	
})(jQuery);