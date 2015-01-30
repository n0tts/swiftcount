ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address               =>  'smtp.mailgun.org',
  :port                  =>  '587',
  :authentication        =>  :plain,
  :user_name             =>  'postmaster@sandbox17fb0261e15b4894b544f8d4e05892dd.mailgun.org',
  :password              =>  'd5ffb30d60b9c78921ddfd496e481b17',
  :domain                =>  'sandbox17fb0261e15b4894b544f8d4e05892dd.mailgun.org',
  :enable_starttls_auto  =>  true
  }