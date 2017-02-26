class Api::V1::SeasonalAllergiesController < ApplicationController
    before_action :log
    before_action :authenticate_api_v1_user!
    load_and_authorize_resource

    def index
        @seasonal_allergies = current_api_v1_user.seasonal_allergies
    end

    def create
        @seasonal_allergy = SeasonalAllergy.create seasonal_allergy_params_with_user
    end

    def update
        @seasonal_allergy.update(seasonal_allergy_params) ? head(:ok) : head(:internal_server_error)
    end

    def destroy
        @seasonal_allergy.destroy.destroyed? ? head(:ok) : head(:internal_server_error)
    end

    private

    def seasonal_allergy_params_with_user
        seasonal_allergy_params.merge user: current_api_v1_user
    end

    def seasonal_allergy_params
        params.permit %i(name begin_at end_at)
    end
end
