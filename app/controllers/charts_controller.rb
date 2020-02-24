class ChartsController < ApplicationController

 def index
    @charts = Chart.all
  end
  
  def show
    @chart = Chart.find(params[:id])
    # @songs = @chart.songs
  end

  def new_movie
    @chart = Chart.find(params[:id])
    @songs = Song.all.where(chart_id: nil)
  end

  def add_song
    @chart = Chart.find(params[:id])
    @chart.songs << Song.find(params[:song_id])
    # redirect_to theater_path(@theater)
  end

  def remove_song
    # delete 'remove_theater_movie/:id/:movie_id', to: 'theaters#remove_movie', as: 'remove_theater_movie'
    # remove the theater_id so it is no longer associated
    @chart = Chart.find(params[:id])
    Song.find(params[:song_id]).update(chart_id: nil)
    # redirect_to theater_path(@theater)
  end

end
