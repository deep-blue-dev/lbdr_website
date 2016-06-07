class PagesController < ApplicationController
  def group
    @sectors = Sector.all

    @banners = Banner.order("id" => "desc").all
  end

  def contact
  end

  def investor
  end

  def welcome
    @sectors = Sector.all

    #@homes = Home.order("id" => "desc").all

    @banners = Banner.order("id" => "desc").all

    @content = Content.order("id" => "asc").all
  end
end
