class CryptoAlertJob
  include Sidekiq::Job
include CryptoPriceAlert
  def perform(*args)
    # Do something
    current_price("bitcoin")

    
  end
  Sidekiq::Cron::Job.create(cron: '* * * * *', class: 'CryptoAlertJob') # execute at every 5 minutes
end
