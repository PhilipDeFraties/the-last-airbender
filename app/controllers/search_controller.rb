class SearchController < ApplicationController

  def index
    nation = params[:nation].gsub(/_/, ' ').split.map(&:capitalize).join(' ')
    page = 1
    character_array = []
    body = true
    conn = Faraday.new(url: 'https://last-airbender-api.herokuapp.com')

    until body == false
      response = conn.get("/api/v1/characters?affiliation=#{nation}&page=#{page}")
      json = JSON.parse(response.body, symbolize_names: true)
      character_array << json
      if json.empty?
        body = false
      end
      page += 1
    end
    @characters = character_array.flatten.map do |char_data|
      Character.new(char_data)
    end
  end

end
