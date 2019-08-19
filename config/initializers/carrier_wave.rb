if Rails.env.production?
  Carrierwave.configure do |config|
    #config.fog_provider = 'fog/AWS'
    config.fog_credentials = {
      #configuration for Amazon S3
      :provider => 'AWS',
      :aws_access_key_id => ENV[AWS_ACCESS_KEY],
      :aws_secret_access_key => ENV[AWS_SECRET_KEY]
    }
  end
end 
