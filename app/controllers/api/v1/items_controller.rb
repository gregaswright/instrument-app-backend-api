class Api::V1::ItemsController < ApplicationController
    skip_before_action :authorized

    def index
        @items = Item.all
        render json: @items
    end

    def show
        @item = Item.find(params[:id])
        render json: @item
    end

    def create
        @item = Item.new(item_params)
        unless @item.save
            render json: { status: 500 }
        else
            render json: {
                status: :added,
                item: @item
            }
        end
    end

    def update
        if @item.update(item_params)
            render json: {
                status: :updated,
                item: @item
            }
        else
            render json: { status: 500 }
        end 
    end

    def destroy
        
        @item = Item.find(params[:id])
        @item.destroy
        render json: {}
    end

private

  def item_params
    params.require(:item).permit(:cart_id, :listing_id)
  end

end
