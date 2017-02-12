Rails.application.routes.draw do
    namespace :api, defaults: { format: :json } do
        namespace :v1 do
            get 'hello', to: 'posts#hello'

            mount_devise_token_auth_for 'User', at: 'auth'
        end
    end
end
