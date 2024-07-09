<!--====== Portfolio Section Start ======-->
<section id="work-section" class="portfolio-section section-gap">
  <div class="container">
    <div class="section-heading text-center mb-50">
      <h2 class="title">{!!getcong_service('section_portfolio_title')!!}</h2>
     </div>
    <div class="portfolio-filter">
      <ul>
        <li data-filter="*" class="active">Show All</li>
        @foreach($categories as $category)
        <li data-filter=".{{$category->id}}">{{$category->category_name}}</li>
        @endforeach
         
      </ul>
    </div>
    <div class="row filter-items">
      
      @foreach($portfolio as $portfolio_item)
      <div class="col-lg-4 col-sm-6 filter-item {{$portfolio_item->cat_id}}">
        <div class="portfolio-items-two mt-50">
          <div class="portfolio-thumb">
            <img src="{{ URL::asset('upload/portfolio/'.$portfolio_item->image.'-b.jpg') }}" alt="Portfolio Image" title="{{$portfolio_item->title}}">
            <a href="{{ URL::asset('upload/portfolio/'.$portfolio_item->image.'-b.jpg') }}" class="portfolio-link video-popup" data-lity title="portfolio"></a>
          </div>
          
          <div class="portfolio-content">
            <h4 class="title"><a href="#" title="portfolio name">{{$portfolio_item->title}}</a></h4>
            <div class="categories">
              <a href="#" title="portfolio categories">{{\App\Categories::getCategoryInfo($portfolio_item->cat_id)->category_name}}</a>
            </div>
          </div>
        </div>
      </div>
      @endforeach
     
    </div>
  </div>
</section>
<!--====== Portfolio Section End ======-->