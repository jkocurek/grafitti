class Graffiti < ApplicationRecord

  def self.get_graffiti_report(ward, month, year)
    require 'soda/client'

    client = SODA::Client.new({:domain => "data.cityofchicago.org"})
    if month.length < 2
      month_string = '0' + month.to_s
    else
      month_string = month
    end 
    year_and_month = year + '-' + month_string
    start_date = "\'" +  year_and_month + '-01T00:00:00' + "\'"
    max_days = Date.new(year.to_i, month.to_i, -1).day
    end_date = "\'" + year_and_month + '-' + max_days.to_s + 'T23:59:59' + "\'"
    search_string = "ward = \'" + ward.to_s + "\' AND creation_date > "
    search_string = search_string + start_date + " AND creation_date < " + end_date
    results = client.get("cdmx-wzbz", {"$where" => search_string})
    results.count
  end
end

