class RealEstatesController < ApplicationController
  before_action :authenticate_user!

  def index
    @real_estates = RealEstate.all.order("created_at DESC")
  end

  def new
    session[:property_type] = params[:property_type]
    @real_estate = current_user.real_estates.build
  end

  def create
    @real_estate = current_user.real_estates.build(real_estate_params)
    if @real_estate.save
      session[:property_type] = nil
      redirect_to real_estates_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @real_estate = current_user.real_estates.find(params[:id])
    session[:property_type] = @real_estate.type
  end

  def update
    @real_estate = current_user.real_estates.find(params[:id])

    if @real_estate.update(real_estate_params)
      session[:property_type] = nil
      redirect_to real_estates_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @real_estate = current_user.real_estates.find(params[:id])
    @real_estate.destroy

    redirect_to real_estates_path, status: :ok, notice: "Successfully deleted a listing"
  end

  def processing_transaction
    @real_estate = RealEstate.find(params[:real_estate_id])

    if VeryLongTask.new.perform
      TransactionSuccessMailer.successful_transaction_email(current_user, @real_estate).deliver
      @real_estate.destroy
      redirect_to real_estates_path, notice: "Successful Transaction"
    end
  end

  private
  def real_estate_params
    params.require(:real_estate).permit(:picture, :owner, :address, :sqmt, :price, :rooms, :floors, :air_cond, :units, :shops, :parking, :type)
  end
end
