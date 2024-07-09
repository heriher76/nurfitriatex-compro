<!--====== Footer Start ======-->
<footer class="footer-item copyright-box">
  <div class="container">
    <div class="row">
      <div class="col-lg d-lg-flex align-items-center">
        <p>
          @if(getcong('site_copyright'))
            
            {{getcong('site_copyright')}}
          
          @else
          
            Copyright &copy; {{date('Y')}}. All rights reserved.

          @endif
        </p>
      </div>
      <div class="col-lg d-lg-flex justify-content-lg-end mt-3 mt-lg-0">
        <ul class="social-links">
          <li><span>Follow Us:-</span></li>

          @if(getcong('facebook_url'))<li><a data-tooltip="facebook" href="{{getcong('facebook_url')}}" title="facebook"><i class="fab fa-facebook-square"></i></a></li>@endif
          @if(getcong('linkedin_url'))<li><a data-tooltip="Linkedin" href="{{getcong('linkedin_url')}}" title="Linkedin"><i class="fab fa-linkedin"></i> </a></li>@endif
          @if(getcong('twitter_url'))<li><a data-tooltip="twitter" href="{{getcong('twitter_url')}}" title="twitter"><i class="fab fa-twitter-square"></i></a></li>@endif           
          @if(getcong('pinterest_url'))<li><a data-tooltip="Pinterest" href="{{getcong('pinterest_url')}}" title="Pinterest"><i class="fab fa-pinterest"></i> </a></li>@endif
           
        </ul>
      </div>
    </div>      
  </div>
</footer>
<!--====== Footer End ======-->