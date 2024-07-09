<!--====== Service Section Start ======-->
<section id="services-section" class="service-section section-gap">
  <div class="container">
    <div class="section-heading text-center mb-30">
      <h2 class="title">{!!getcong_service('section_service_title')!!}</h2>
      <span class="tagline">{!!getcong_service('section_service_desc')!!}</span>
    </div>
    <div class="row justify-content-center">
      
      @foreach($services as $service)
      <div class="col-lg-4 col-sm-6 wow fadeInUp">
        <div class="iconic-box icon-left mt-30">
          <div class="icon">
            <img src="{{ URL::asset('upload/service/'.$service->service_icon) }}" alt="Service Icon" title="{{$service->service_title}}">
          </div>
          <div class="content">
            <h5 class="title">
              {{$service->service_title}}
            </h5>
            <p>{!!$service->service_text!!}</p>
          </div>
        </div>
      </div>
      @endforeach
        
    </div>
  </div>
</section>
<!--====== Service Section End ======-->