<div id="testimonial-section" class="section-blob-bg-two">
  <!--====== Testimonial Section Start ======-->
  <section class="testimonial-section section-gap">
    <div class="container">
      <div class="testimonial-area">
        <div class="section-heading text-center mb-50">
          <h2 class="title">{!!getcong_service('section_testimonials_title')!!}</h2>
         </div>

        <div class="testimonial-slider-two row">
          @foreach($testimonials as $i => $testimonial)
          <div class="col-lg-6">
            <div class="testimonial-item">
              <div class="content">
                <p>{!!$testimonial->testimonial!!}</p>
              </div>
              <div class="author">
                <div class="author-photo">
                  <img src="{{ URL::asset('upload/testimonial/'.$testimonial->image.'-b.png') }}" alt="author" title="{{$testimonial->name}}">
                </div>
                <div class="author-info">
                  <h4 class="name">{{$testimonial->name}}</h4>
                 </div>
              </div>
            </div>
          </div>
          @endforeach

           
        </div>
      </div>
    </div>
  </section>
  <!--====== Testimonial Section End ======-->
 </div> 