class HomeController < ApplicationController



  #global variable
  def index
      Time.zone = 'Seoul'
      @error_print = flash[:errors_m]


  end

  def selecttime
    Time.zone = 'Seoul'
    @nickname       =    params[:nickname]
    @numofperson    =    params[:numofperson]
    @exactlocation  =    params[:exactlocation]
    @depart         =    params[:depart]
    @arrival        =    params[:arrival]

    if @depart == @arrival
        redirect_to :back, :flash => { :errors_m => "출발과 도착은 동일할수 없음" }
    end

  end



  def result
      Time.zone = 'Seoul'




  end
end
