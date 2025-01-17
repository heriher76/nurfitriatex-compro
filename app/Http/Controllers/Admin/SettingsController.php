<?php

namespace App\Http\Controllers\Admin;

use Auth;
use App\User;
use App\Settings;

use App\Http\Requests;
use Illuminate\Http\Request;
use Session;
use Intervention\Image\Facades\Image; 
use Illuminate\Support\Str;

class SettingsController extends MainAdminController
{
	public function __construct()
    {
		 $this->middleware('auth');	
         
    }
    public function settings()
    { 
    	if(Auth::User()->usertype!="Admin"){

            \Session::flash('flash_message', 'Access denied!');

            return redirect('admin/dashboard');
            
        }
        
        $settings = Settings::findOrFail('1');
        
        return view('admin.pages.settings',compact('settings'));
    }	 
    
    public function settingsUpdates(Request $request)
    {  
    		 
    	$settings = Settings::findOrFail('1');
 
	    
	    $data =  \Request::except(array('_token')) ;
	    
	    $rule=array(
		        'site_name' => 'required',
		        'site_email' => 'required'
		   		 );
	    
	   	 $validator = \Validator::make($data,$rule);
 
            if ($validator->fails())
            {
                    return redirect()->back()->withErrors($validator->messages());
            }
	    

	    $inputs = $request->all();
		
		$icon = $request->file('site_logo');
		
		$icon_favicon = $request->file('site_favicon');
		 
		//Logo
		 
        if($icon){            
              
            $tmpFilePath = public_path('/upload/'); 			
			 
			$hardPath = 'logo.png';
			
            $img = Image::make($icon);

            $img->save($tmpFilePath.$hardPath); 
             
            $settings->site_logo = 'logo.png';
             
        }       
        
        //Favicon
        if($icon_favicon){
        	
        	 
            $tmpFilePath = public_path('/upload/'); 			
			 
			$hardPath = 'favicon.png';
			
            $img = Image::make($icon_favicon);

            $img->fit(16, 16)->save($tmpFilePath.$hardPath); 
             
            $settings->site_favicon = 'favicon.png';
            
             
        }
 

		$settings->site_style = $inputs['site_style'];
		$settings->site_name = $inputs['site_name']; 		
		$settings->site_email = $inputs['site_email'];
		$settings->site_description = $inputs['site_description'];
		
		$settings->facebook_url = $inputs['facebook_url'];		
		$settings->linkedin_url = $inputs['linkedin_url'];
		$settings->twitter_url = $inputs['twitter_url'];
		$settings->pinterest_url = $inputs['pinterest_url'];
		//$settings->google_plus_url = $inputs['google_plus_url'];

		$settings->site_copyright = $inputs['site_copyright'];
		
		  
		 
	    $settings->save();

	    Session::flash('flash_message', 'Successfully updated!');

        return redirect()->back();
    }
    
     
    public function sections_settings(Request $request)
    {  
    		 
    	$settings = Settings::findOrFail('1');
 
	    
	    $data =  \Request::except(array('_token')) ;
	    
	     
	    $inputs = $request->all();
		
		 
		$settings->service_section = $inputs['service_section']; 
		$settings->about_section = $inputs['about_section']; 
		$settings->portfolio_section = $inputs['portfolio_section'];
		$settings->achivement_section = $inputs['achivement_section'];
		$settings->team_section = $inputs['team_section'];
		$settings->features_section = $inputs['features_section'];
		$settings->testimonials_section = $inputs['testimonials_section'];
		$settings->whychoose_section = $inputs['whychoose_section'];
		$settings->our_clients_section = $inputs['our_clients_section'];
		$settings->contact_us_section = $inputs['contact_us_section']; 
		  
		  
		 
	    $settings->save();

	    Session::flash('flash_message', 'Successfully updated!');

        return redirect()->back();
    }

    public function update_email_settings(Request $request)
    {  
          
        $settings = Settings::findOrFail('1');
 
        
        $data =  \Request::except(array('_token')) ;
        
        $rule=array(
                'smtp_host' => 'required',
                'smtp_port' => 'required',
                'smtp_email' => 'required',
                'smtp_password' => 'required' 
                 );
        
         $validator = \Validator::make($data,$rule);
 
            if ($validator->fails())
            {
                    return redirect()->back()->withErrors($validator->messages());
            }
        

        $inputs = $request->all();

        $smtp_password=$inputs['smtp_password'];

        $site_name=$settings->site_name;
        
        putPermanentEnv('MAIL_HOST', $inputs['smtp_host']);
        putPermanentEnv('MAIL_PORT', $inputs['smtp_port']);
        putPermanentEnv('MAIL_USERNAME', $inputs['smtp_email']);
        putPermanentEnv('MAIL_PASSWORD', "$smtp_password");
        putPermanentEnv('MAIL_ENCRYPTION', $inputs['smtp_encryption']);
        putPermanentEnv('MAIL_FROM_ADDRESS', $inputs['smtp_email']);
        putPermanentEnv('MAIL_FROM_NAME', "'$site_name'");        
         
        Session::flash('flash_message', 'Successfully updated!');

        return redirect()->back();
    } 

    public function headfootupdate(Request $request)
    {  
    		 
    	$settings = Settings::findOrFail('1');
 
	    
	    $data =  \Request::except(array('_token')) ;
	    
	     
	    $inputs = $request->all();
		
		 
		$settings->site_header_code = $inputs['site_header_code']; 
		$settings->site_footer_code = $inputs['site_footer_code'];
		 
		  
		 
	    $settings->save();

	    Session::flash('flash_message', 'Successfully updated!');

        return redirect()->back();
    } 
    	
}
