class ChartsController < ApplicationController

 def index
    @charts = Chart.all
  end
  
  def show
    @chart = Chart.find(params[:id])
    @songs = @chart.songs
  end

  def new_song
    @chart = Chart.find(params[:id])
    @songs = Song.all.where(chart_id: nil)
  end

  def add_song
    @chart = Chart.find(params[:id])
    @chart.songs << Song.find(params[:song_id])
    redirect_to chart_path(@chart)
  end

  def remove_song
    @chart = Chart.find(params[:id])
    Song.find(params[:song_id]).update(chart_id: nil)
    redirect_to chart_path(@chart)
  end

end
