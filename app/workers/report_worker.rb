class ReportWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform(start_date, end_date)
    # simulate the scenario where each report generation will take 10 seconds
    sleep 10
    puts "SIDEKIQ WORKER GENERATING A REPORT FROM #{start_date} to #{end_date}."

  end
end
