class CategoriesController < ApplicationController
    
    before_action :current_category, only: [:show]

    def index
        @categories = Category.all
    end

    def show
      
    end
    

    def current_category
        @category = Category.find(params[:id])
    end
end
