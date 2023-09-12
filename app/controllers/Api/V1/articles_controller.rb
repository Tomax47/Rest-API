module Api
    module V1

        class ArticlesController < ApplicationController

            def index 
                @articles = Article.all.order("created_at DESC")
                render json: {status: 'SUCCESS', message: 'Loaded articles', data: @articles}
            end


        end

    end

end