class LogController < ApplicationController
  require 'json'

  skip_before_filter :verify_authenticity_token#, :if => Proc.new { |c| c.request.format == 'application/json' }

  def insert_update

    logger.info("Hi, I'm here!!!")
    param = params[:json]
    json_param = JSON.parse(param)
    logger.info(json_param["c"])
    puts JSON.parse(params[:json]).to_hash[:c]

    render :nothing => true
  end
end
