# TODO: Write documentation for `Wap`
require "./client"
module Wap
  VERSION = "0.1.0"
  path = ARGV[0]
  temp_station = ARGV[1]
  prognosis_station = ARGV[2]
  client = Wap::Client.new(path)
  temp = client.get_temperature(ARGV[1])
  prognosis = client.get_prognosis(ARGV[2])
  puts "#{prognosis.to_s} #{temp.to_s}"
end
