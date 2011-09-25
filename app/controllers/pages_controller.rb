class PagesController < ApplicationController
  def portfolio
    @products = Product.all
  end
end
