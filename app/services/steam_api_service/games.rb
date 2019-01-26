class Games < SteamApiService
  def initialize(steam_id:)
    super(steam_id: steam_id)
  end

  def request
    params = {
      endpoint: '/GetOwnedGames/v0001/'
    }

    make_request(params)
  end
end