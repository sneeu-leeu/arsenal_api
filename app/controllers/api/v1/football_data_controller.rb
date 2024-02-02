class Api::V1::FootballDataController < ApplicationController
    def arsenal_data
        data = FootballDataService.arsenal_results_and_fixtures
        render json: data
    end

    def matches_data
        data = FootballDataService.arsenal_matches
        render json: data
    end
end