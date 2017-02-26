class ApplicationController < ActionController::API
    include DeviseTokenAuth::Concerns::SetUserByToken
    include CanCan::ControllerAdditions

    alias current_user current_api_v1_user
    alias authenticate_user! authenticate_api_v1_user!
end
