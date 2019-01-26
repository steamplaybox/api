class Profile < SteamApiService
  def initialize(steam_id:)
    super(steam_id: steam_id)
  end

  def request
    params = {
      endpoint: '/GetPlayerSummaries/v0002/'
    }

    make_request(params)
  end
end