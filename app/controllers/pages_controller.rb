class PagesController < ApplicationController
  def group
    @sectors = Sector.all

    @banners = Banner.order("id" => "desc").all

    @group = Group.first

    @executive_committee = Group.executive_committee

    @board_of_directors = Group.board_of_directors

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
