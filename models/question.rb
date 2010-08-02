class Question
  
  @@pony = {
    :to => ENV['SEND_TO']
    :via => :smtp, 
    :via_options => {
      :address        => "smtp.sendgrid.net",
      :port           => "25",
      :authentication => :plain,
      :user_name      => ENV['SENDGRID_USERNAME'],
      :password       => ENV['SENDGRID_PASSWORD'],
      :domain         => ENV['SENDGRID_DOMAIN']
    }
  }
  
  def initialize(params)
    @params = params
  end
  
  def send
    Pony.mail(@params.merge(@@pony))
  end
  
  
  
end