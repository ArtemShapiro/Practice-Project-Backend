class Api::V1::PostsController < ApplicationController
    def hello
        @answer = params[:name]
    end
end
