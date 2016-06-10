class NewInvestmentsController < ApplicationController
  
  def index
    @new_investment = NewInvestment.first
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sector
      @sector = Sector.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sector_params
      params.require(:sector).permit(:title, :description, :photo)
    end
end
