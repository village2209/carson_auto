ActionMailer::Base.smtp_settings = {
	:address    		=> "smtp.gmail.com",
	:port				=> 587,
	:domain				=> "carsonauto.herokuapp.com",
	:user_name 			=> "carsonauto.web@googlemail.com",
	:password   		=> "$Carsonauto",
	:authentication 	=> "plain",
	:enable_starttls	=> true
}