class Api::V1::CartsController < ApplicationController
    skip_before_action :authorized

    def index
        @carts = Cart.all
        render json: @carts
    end

    def show
        @cart = Cart.find(cart_params)
        render json: @cart
    end

    def create
        @cart = Cart.new(cart_params)
        unless @cart.save
            render json: { status: 500 }
        else
            render json: {
                status: :added,
                cart: @cart
            }
        end
    end

private

  def cart_params
    params.require(:cart).permit(:user_id, :history)
  end

end
