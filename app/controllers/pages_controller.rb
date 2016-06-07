class PagesController < ApplicationController
  def group
    @sectors = Sector.all
  end

  def contact
  end

  def investor
  end

  def welcome
    @sectors = Sector.all

    @homes = Home.all
  end
end
