# frozen_string_literal: true

class IPlayerService < SteamApiService
  def initialize(steam_id:)
    super(steam_id: steam_id, route: 'IPlayerService')
  end

  def all_games
    params = {
      endpoint: 'GetOwnedGames/v0001'
    }

    make_request(params)
  end

  def recently_played
    params = {
      endpoint: 'GetRecentlyPlayedGames/v0001'
    }

    make_request(params)
  end
end
