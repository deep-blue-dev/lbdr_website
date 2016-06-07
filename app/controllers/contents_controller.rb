class ContentsController < InheritedResources::Base

  private

    def content_params
      params.require(:content).permit(:title, :description)
    end
end

