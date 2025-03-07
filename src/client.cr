require "http/client"
require "./response/temperature"
require "./response/prognosis"

module Wap
  class Client

    ERROR_TEXT = "?"

    def initialize(url : String)
      @client = HTTP::Client.new url
    end

    def get_temperature(station_id : String)
      path = "/stream?type=metobs&parameterIds=1&stationId=#{station_id}&period=latest-hour"
      response = @client.get(path)
      return ERROR_TEXT unless response.success?
      Response::Temperature.new response.body
    end

    def get_prognosis
      path = ""
      response = @client.get(path)
      return ERROR_TEXT unless response.success?
      Response::Prognosis.new response.body
    end
  end
end
