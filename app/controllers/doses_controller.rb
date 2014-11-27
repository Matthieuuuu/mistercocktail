class DosesController < ApplicationController
  def destroy
    dose = Dose.find(params[:id])
    @cocktail = dose.cocktail
    @ingredient = dose.ingredient
    dose.destroy
    redirect_to cocktail_path(@cocktail)
  end

  def create
    dose = Dose.new
    dose.cocktail = Cocktail.find(params[:dose][:cocktail_id])
    dose.ingredient = Ingredient.find(params[:dose][:ingredient_id])
    dose.amount = params[:dose][:amount].to_f
    if dose.save
      redirect_to cocktail_path(dose.cocktail)
    else
      render template: "ingredients_controller/show"
    end
  end



  private

  # def cocktail_params
  #   params.require(:cocktail).permit(:name)
  # end
end