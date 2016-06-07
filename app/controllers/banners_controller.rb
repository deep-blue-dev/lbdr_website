class BannersController < InheritedResources::Base

  private

    def banner_params
      params.require(:banner).permit(:sector_id, :title, :description)
    end
end

