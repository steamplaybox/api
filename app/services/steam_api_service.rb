class SteamApiService
  def initialize(steam_id:)
    @steam_id = steam_id
    @api_key = '0C8E3D65B52A29BA07D7406F602ADCBA'
  end

  protected

  attr_reader :steam_id, :api_key

  def make_request(endpoint:)
    HTTParty.get(
      url(endpoint)
    ).response.body
  end

  def base_url
    'http://api.steampowered.com/ISteamUser/'
  end

  def url(endpoint)
    "#{base_url}#{endpoint}?key=#{api_key}&steamid=#{steam_id}&format=json"
  end
end