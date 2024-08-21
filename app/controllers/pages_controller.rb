class PagesController < ApplicationController
  def dashboard
  end

  def index
    def index
      @customer = Customer.group_by_day(:created_at).count
      @products = Product.group(:ProductQuantity).count
      # Add more data as needed
    end
  
  end
end
