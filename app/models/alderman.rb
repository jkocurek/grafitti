class Alderman < ApplicationRecord

  def self.get_alderman(last_name)
    require 'soda/client'
    search_string = String.new

    client = SODA::Client.new({:domain => "data.cityofchicago.org"})
    search_string = "alderman like \'%" << last_name.to_s << "\'"
    results = client.get("7ia9-ayc2", {"$where"=> search_string})
  end

  def self.parse_alderman(alderman)
    parsed_alderman = Hash.new

    parsed_alderman["ward"] = alderman["ward"]
    parsed_alderman["fullname"] = alderman["alderman"]
    return parsed_alderman
  end
end
