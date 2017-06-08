class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]
  def welcome
    @header = "This is the welcome page"
  end

  def about
    @header = "Ruby rails is the best"
  end

  def contest
    @header = "Your the contest winner!"
     flash[:notice] = "Sorry, the contest has ended"
    redirect_to '/welcome'

  end

  # def kitten
  #   requested_size = params[:size]
  #   @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  # end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

  def secrets


    if params[:magic_word] == 'manny'

    else
      flash[:alert] = 'Sorry, your not authorized to view that page!'
      redirect_to '/welcome'
    end
  end
end
