<!--====== Start Hero Area ======-->
<section id="home-section" class="have-animate-icons">
  <div class="slider-wrapper default">
    <div id="slider">

      @foreach($sliders as $slider)
      <div class="hero-slide-main">
        <div class="hero-slide-item">
          <h2 class="content fade">{{$slider->slider_title}}</h2>
          <p class="content fade">{{$slider->slider_sub_title}}</p>
        </div>
        <img src="{{ URL::asset('upload/slider/'.$slider->slider_image.'-b.jpg') }}" class="bg" title="{{$slider->slider_title}}" alt="slider" />
      </div>
      @endforeach

    </div>
  </div>
</section>
<!--====== End Hero Area ======-->