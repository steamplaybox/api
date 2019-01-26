class SteamApiService
  def initialize(steam_id:, route:)
    @steam_id = steam_id
    @route = route
    @api_key = '0C8E3D65B52A29BA07D7406F602ADCBA'
  end

  protected

  attr_reader :steam_id, :api_key, :route

  def make_request(endpoint:)
    request = HTTParty.get(
      url(endpoint)
    )
    puts url(endpoint)
    request.response.body
  end

  def base_url
    'http://api.steampowered.com'
  end

  def url(endpoint)
    "#{base_url}/#{route}/#{endpoint}/?key=#{api_key}&steamid=#{steam_id}&format=json"
  end
end