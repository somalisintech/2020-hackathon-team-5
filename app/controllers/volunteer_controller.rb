require 'gon'
class VolunteerController < ApplicationController
  def index
      @foodbank = nil
      return unless params[:volunteerSearch]
      @foodbank = Search::Foodbank.new(params[:volunteerSearch]).find
      gon.your_array = @foodbank
  end
end
