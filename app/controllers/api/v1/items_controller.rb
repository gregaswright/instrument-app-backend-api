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

private

  def item_params
    params.require(:item).permit(:cart_id, :listing_id)
  end

end
