class HTTPong
  @@last = 200

  def self.next
    response = codes[@@last]
    @@last = response.first
    response
  end

  def self.codes
    {
      200 => [404, 'Not Found'],
      404 => [500, 'Internal Server Error'],
      500 => [200, 'OK']
    }
  end
end
