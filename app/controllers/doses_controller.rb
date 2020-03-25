class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(doses_params)
    # we need `cocktail_id` to associate dose with corresponding cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      # render :new. always relative to app /views
      render 'cocktails/show'
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy

    redirect_to cocktail_path(@dose.cocktail)
  end

  private

  def doses_params
    params.require(:dose).permit(:ingredient_id, :description)
  end
end
