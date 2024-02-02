class FootballDataService
    include HTTParty
    base_uri 'https://api.football-data.org/v2'
    headers 'X-Auth-Token' => '0b2d6b332d844ed685fc0bb6aa3e621a'
  
    def self.arsenal_results_and_fixtures
      response = get('/teams/57')
      return nil unless response.success?
      data = response.parsed_response
  
      results = data['squad']
  
      { results: results}
    end
  
    def self.arsenal_matches
      response_matches = get('/teams/57/matches')
      return nil unless response_matches.success?
      matches_data = response_matches.parsed_response
  
      results = matches_data['matches'].select { |match| match['status'] == 'SCHEDULED' }
  
      {results: results}
    end
end