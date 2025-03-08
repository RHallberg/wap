require "csv"
module Response
  class Temperature
    def initialize(body : String)
      @body = body
    end

    def to_s
      "#{parse_temp}°C"
    end

    private def parse_temp
      data = CSV.new(@body, separator: ';')
      v = false
      temp = ""
      data.each do |row|
        if(v)
          temp = row[2]
          break
        end
        v = row[0] == "Datum" if row.row.size > 0
      end
      return "?" if temp.blank?
      temp.to_f32.round_away.to_i
    end
  end
end
