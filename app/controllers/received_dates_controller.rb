class ReceivedDatesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :new, :create]


  def index
  end

  def new
    @total_info = TotalInfo.new
  end
  
  def create
    @total_info = TotalInfo.new(total_info_params)
    if @total_info.valid?
      @total_info.save
      redirect_to root_path, notice: "登録完了"
    else
      render :new
    end
  end

  private

  def total_info_params
    params.require(:total_info)
    .permit(:date, :hospital_name, :medicine_name, :timing, :individual, :days_supply, :notes, :image)
    .merge(user_id: current_user.id)
  end
  
end
