class Api::V1::ListingsController < ApplicationController
    skip_before_action :authorized

    def index
        @listings = Listing.all
        render json: @listings
    end

    def show
        @listing = Listing.find(params[:id])
        render json: @listing
    end

    def create
        @listing = Listing.new(listing_params)
        unless @listing.save
            render json: { status: 500 }
        else
            render json: {
                status: :added,
                listing: @listing
            }
        end
    end

    def update
        @listing = Listing.find(params[:id])
        if @listing.update(listing_params)
            render json: {
                status: :updated,
                listing: @listing
            }
        else
            render json: { status: 500 }
        end 
    end

    def destroy
        
        @listing = Listing.find(params[:id])
        @listing.destroy
        render json: {}
    end

private

  def listing_params
    params.require(:listing).permit(:brand, :instrument_type, :history, :weight, :age, :used, :price, :img, :user_id, :in_cart)
  end
    
    
end
