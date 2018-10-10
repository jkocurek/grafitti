class GraffitiController < ApplicationController
  def report
    graffiti_report = Hash.new
    alderman = Hash.new
    results = Hash.new
    reports = Hash.new

    alderman = Alderman.get_alderman(params[:alderman])
    if !alderman.count 
      render nothing: true, status: :bad_request
    elseif alderman.count > 1
      render nothing: true, status: :bad_request
    else
      alderman_processed = Alderman.parse_alderman(alderman[0])
      results = Graffiti.get_graffiti_report(alderman_processed["ward"], params[:month], params[:year])

      reports["alderman_name"]= alderman_processed["fullname"]
      reports["ward"] = alderman_processed["ward"]
      reports["month"]= params[:month]
      reports["year"]= params[:year]
      reports["count"] = results

      render json: reports
    end 
  end
end
