class CryptoAlertJob
  include Sidekiq::Job

  def perform(*args)
    # Do something
    puts "I am Daksh"
  end
  Sidekiq::Cron::Job.create(cron: '* * * * *', class: 'CryptoAlertJob') # execute at every 5 minutes
end
