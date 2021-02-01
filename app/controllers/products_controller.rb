class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(
      name: params[:product][:name],
      tagline: params[:product][:tagline]
    )
    if @product.save
      redirect_to root_path
    else
      redirect_to :new
    end
  end
end