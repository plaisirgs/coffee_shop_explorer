class FavoritesController < ApplicationController

    def index
        @shops = Shop.all
        @favorites = User.find_by(id: current_user.id).favorites
    end
    
    def show
        @favorite = Favorite.find(params[:id])
        @shop_name = @favorite.favorite_shop.name
    end

    def new
    end


end
