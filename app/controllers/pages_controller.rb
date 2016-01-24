class PagesController < ApplicationController
  def group
  end

  def contact
  end

  def investor
  end

  def welcome
    @sectors = Sector.all
  end
end
