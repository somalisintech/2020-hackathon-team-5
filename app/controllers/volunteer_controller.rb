require 'gon'
class VolunteerController < ApplicationController
  def index
      @foodbank = nil
      # byebug
      return unless params[:volunteerSearch]
      # byebug
      @foodbank = Search::Foodbank.new(params[:volunteerSearch]).find
      gon.your_array = @foodbank
  end
end
