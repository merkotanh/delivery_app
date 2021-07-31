class PackagesController < ApplicationController
  before_action :set_courier
  before_action :set_package, except: [:create]

  def create
    @package = @courier.packages.create(package_params)
    redirect_to @courier
  end

  def destroy
    # @package = @courier.packages.find(params[:id])
    if @package.destroy
      flash[:success] = "deleted"
    else
      flash[:error] = "could not be deleted"
    end
    redirect_to @courier
  end

  def delivery_status
    @package.update_attribute(:delivery_status, true)
    redirect_to @courier
  end

  private

  def set_courier
    @courier = Courier.find(params[:courier_id])
  end

  def set_package
    @package = @courier.packages.find(params[:id])
  end

  def package_params
    params[:package].permit(:tracking_number, :delivery_status)
  end

end
