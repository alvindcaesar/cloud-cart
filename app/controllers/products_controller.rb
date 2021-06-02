class ProductsController < ApplicationController
before_action :set_product, only: %i[ show edit update destroy ]
before_action :authenticate_user!

    def index
        @products = Product.all
    end

    def new
        @product = Product.new
    end

    def create
        @product = Product.new(product_params)
        if @product.save
            redirect_to @product, notice: "Your product is successfully created."
        else
            render :new, alert: "Product was not created. Please try again."
        end
    end

    def update
        if @product.update(product_params)
            redirect_to @product, notice: "Product was successfully updated."
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @product.destroy
        redirect_to products_url, notice: "Product was successfully deleted."
    end

    private

    def set_product
        @product = Product.find(params[:id])
    end

    def product_params
        params.require(:product).permit(:product_name, :sku, :price, :description)
    end
end
