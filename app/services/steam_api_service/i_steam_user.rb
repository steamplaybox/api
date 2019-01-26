class ISteamUser < SteamApiService
  def initialize(steam_id:)
    super(steam_id: steam_id, route: 'ISteamUser')
  end

  def profile
    params = {
      endpoint: '/GetPlayerSummaries/v0002/'
    }

    make_request(params)
  end
end