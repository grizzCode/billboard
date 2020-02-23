class ChartsController < ApplicationController
  before_action :set_chart, only: [:show, :edit, :update, :destroy]
  #set_*model* is private method that loads in called index automatically
 def index
    @charts = Chart.all
  end
  
 def new
    @chart = Chart.new
  end
  
 def create
    @chart = Chart.new(chart_params)
    if @chart.save
      redirect_to charts_path
    else
      render :new
    end
  end
  
 def show
   #before_action
 end
  
 def edit
   #before_action
 end
  
 def update
    @chart = Chart.find(params[:id])
    if @chart.update(chart_params)
      redirect_to charts_path
    else
      render :edit
    end
  end
  
 def destroy
    @chart.destroy
    redirect_to charts_path
  end
  
 private
  def chart_params
    params.require(:chart).permit(:name, :genre)
   
  end
  
 def set_chart
    @chart = Chart.find(params[:id])
  end
 end
 
