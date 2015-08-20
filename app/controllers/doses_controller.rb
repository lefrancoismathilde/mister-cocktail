class DosesController < ApplicationController
  before_action :find_dose, only: [:destroy]

  def new
    @dose = Dose.new
  end

  def create
    @dose = @cocktail.doses.build(dose_params)
    @dose.save
    redirect_to cocktail_path(cocktail)
  end

  def destroy
    @dose.destroy
    redirect_to cocktail_path(cocktail)
  end

  private

  def find_dose
    @dose = Dose.find(params[:dose_id])
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient)
  end
end
