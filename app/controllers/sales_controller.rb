class SalesController < ApplicationController
  def index
  end

  def report
    # report generation job is sent to the redis queue and will be consumed by sidekiq worker(report_worker.rb)
    ReportWorker.perform_async("04-01-2022", "04-03-2022")
    render text: "Request to generate a report has been added to the sidekiq queue"
  end

end
