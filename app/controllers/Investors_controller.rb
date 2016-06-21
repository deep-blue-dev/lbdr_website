class InvestorsController < ApplicationController
  
  def index
    @investors = Investor.all

    @investor_content = InvestorContent.first
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def investor_sector
      @investor = Investor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def investor_params
      params.require(:investor).permit(:firstname, :lastname, :description)
    end
end
