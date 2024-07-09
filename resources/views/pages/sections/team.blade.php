<!--====== Team Section Start ======-->
<section id="team-section" class="team-section section-gap">
  <div class="container">
    <div class="section-heading text-center mb-30">
      <h2 class="title">{!!getcong_service('section_team_title')!!}</h2>
      <span class="tagline">{!!getcong_service('section_team_desc')!!}</span>
    </div>
    <div class="row team-member-items justify-content-center">
      
      @foreach($team as $k=>$team_member)
      <div class="col-lg-4 col-md-6 col-sm-6 wow fadeInUp">
        <div class="member-item mt-30">
          <div class="member-photo">
            <img src="{{ URL::asset('upload/team/'.$team_member->image.'-b.jpg') }}" alt="team" title="team member">
            <ul class="social-icons">

              @if($team_member->facebook_url)<li><a href="{{$team_member->facebook_url}}" target="_blank"><i class="fab fa-facebook-f"></i></a></li>@endif
              @if($team_member->twitter_url)<li><a href="{{$team_member->twitter_url}}" target="_blank"><i class="fab fa-twitter"></i></a></li>@endif
              @if($team_member->linkedin_url)<li><a href="{{$team_member->linkedin_url}}" target="_blank"><i class="fab fa-linkedin-in"></i></a></li>@endif
                
            </ul>
          </div>
          <h4 class="name"><a href="#">{{$team_member->name}}</a></h4>
          <span class="title">{{$team_member->designation}}</span>
        </div>
      </div>
      @endforeach
       
                     
    </div>
  </div>
</section>
<!--====== Team Section End ======-->