<!--====== Faq Setion Start ======-->
  <section id="why-choose" class="faq-section section-gap-bottom">
    <div class="container">
      <div class="accordion-video-box">
        <div class="accordion-video">
          <div class="faq-image text-center text-lg-right content-mb-md-50">
            <img src="{{ URL::asset('assets/img/feature-faq-image.png') }}" alt="feature-faq-image" title="whychoose" class="animate-float-bob-y">
          </div>
        </div>
        <div class="box-content">
          <div class="section-heading mb-30">
            <h2 class="title">{!!getcong_service('section_whychoose_title')!!}</h2>
           </div>
          <div class="accordion" id="accordionFaqOne">
            
            @foreach($whychoose as $i => $whychoose_item)
            <div class="accordion-item @if($i==0) accordion-active @endif">
              <h5 class="accordion-title collapsed" data-toggle="collapse" aria-expanded="@if($i==0) true @else false @endif" data-target="#accordion-{{$i}}">
                  {!!$whychoose_item->title!!}
              </h5>
              <div id="accordion-{{$i}}" class="collapse @if($i==0) show @endif" data-parent="#accordionFaqOne">
                <div class="accordion-content">
                  {!!$whychoose_item->description!!}
                </div>
              </div>
            </div>
            @endforeach 
            
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--====== Faq Setion End ======--> 