# TODO: Write documentation for `Wap`
require "./client"
module Wap
  VERSION = "0.1.0"
  path = ARGV[0]
  client = Wap::Client.new(path)
  puts client.get_temperature(ARGV[1]).to_s
end
