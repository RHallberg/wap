module Response
  class Prognosis

    def initialize(body : String)
      @body = body
    end

    def to_s
      body
    end

    private def parse_prognosis

    end
  end
end
