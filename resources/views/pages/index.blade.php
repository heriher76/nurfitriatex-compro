@extends("app")
@section("content")
 
@include("pages.sections.slider")

@if(getcong('about_section')!=0)
@include("pages.sections.about")
@endif

@if(getcong('service_section')!=0)
@include("pages.sections.services")
@endif

@if(getcong('portfolio_section')!=0)
@include("pages.sections.portfolio")
@endif

@if(getcong('features_section')!=0)
@include("pages.sections.features")
@endif

@if(getcong('team_section')!=0)
@include("pages.sections.team")
@endif

@if(getcong('achivement_section')!=0)
@include("pages.sections.achivement") 
@endif

@if(getcong('testimonials_section')!=0)
@include("pages.sections.testimonials")
@endif
 
@if(getcong('whychoose_section')!=0)
@include("pages.sections.whychoose")
@endif

@if(getcong('our_clients_section')!=0)
@include("pages.sections.clients")
@endif

@if(getcong('contact_us_section')!=0)
@include("pages.sections.contact") 
@endif

@endsection
