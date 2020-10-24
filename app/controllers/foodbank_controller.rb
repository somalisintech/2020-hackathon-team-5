class FoodbankController < ApplicationController

  # def search
  #   if params[:search].blank?  
  #     redirect_to('foodbank/index', alert: "Empty field!") and return  
  #   else  

  #   end  
  # end

  def index
    return unless params[:search]

    @foodbank = Search::Foodbank.new(params[:search]).find
  end
end
