<!--====== Brand Logo Section Start ======-->
  <section class="brand-logo-section">
    <div class="container">
      <div class="section-heading text-center mb-40">
        <h2 class="title">{!!getcong_service('section_our_client_title')!!}</h2>
       </div>
      <div class="logo-carousel">
        <div class="slick-slider row logo-carousel-active align-items-center slick-initialized">
          <div class="slick-list">
            <div class="brand-item-logo slider">
              @foreach($clients as $i => $client)
              <div>

                 @if($client->url!="")
                  <a href="{{ $client->url }}" target="_blank" title="client-url">
                    <img src="{{ URL::asset('upload/clients/'.$client->image.'-b.png') }}" alt="brand-logo" title="{{ $client->name }}">
                  </a> 
                  @else
                   <img src="{{ URL::asset('upload/clients/'.$client->image.'-b.png') }}" alt="brand-logo" title="{{ $client->name }}">
                  @endif
                 
              </div>
              @endforeach
               
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--====== Brand Logo Section End ======--> 