module Setting
  def self.options_params(request, name)
    Rack::Response.new do |response|
      response.set_cookie(name, request.cookies["#{name}"].to_i + 5) if request.cookies["#{name}"].to_i < 100

      total = (TOTAL - [name]).sample

      response.set_cookie(total, request.cookies["#{total}"].to_i - 5 )

      response.redirect('/start')
    end
  end
end
