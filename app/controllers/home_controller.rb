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


      @nickname       =    params[:nickname]
      @numofperson    =    params[:numofperson]
      @exactlocation  =    params[:exactlocation]
      @depart         =    params[:depart]
      @arrival        =    params[:arrival]

      @set_hour       = params[:dephour].to_i
      @set_minute     = params[:depminute].to_i
      @waiting_time   = params[:waitingminute].to_i
      @modified_time  = @set_hour * 6 + @set_minute


      #@car = Person.find(:all, :departing => @depart, :arriving => @arrival, :departing_time => )
      Pool.find_by(id: session[:current_user_id])
    #   if Pool.find( :departing => @depart, :arriving => @arrival, :departing_time => @modified_time).present?
    #         @car = Pool.find(:all, :departing => @depart, :arriving => @arrival, :departing_time => @modified_time)
    #   else
    #         @car = Pool.create(departing: @depart,
    #                             arriving: @arrival,
    #                             departing_time: @modified_time)
    #   end

    #   redirect_to "/home/result/#{@car.id}"




  end
end
