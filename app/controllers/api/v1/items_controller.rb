class ItemsController < ApplicationController

    skip_before_action :authorized

    def index
        @items = Item.all
        render json: @items
    end

    def show
        @item = Item.find(item_params)
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

    def destroy
        Item.destroy(@item.id)
    end
    

private

  def item_params
    params.require(:item).permit(:cart_id, :listing_id)
  end
end
