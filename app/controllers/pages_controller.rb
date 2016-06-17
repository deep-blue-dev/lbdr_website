class PagesController < ApplicationController
  def group
    @sectors = Sector.order("order" => "asc").all

    @banners = GroupBanner.order("id" => "desc").all

    @group = Group.first

    @executive_committee = []
    @board_of_directors = []
    @executive_committee = Group.executive_committee unless Group.nil?

    @board_of_directors = Group.board_of_directors unless Group.nil?

  end

  def contact
  end

  def investor
  end

  def welcome
    @sectors = Sector.order("order" => "asc").all

    #@homes = Home.order("id" => "desc").all

    @banners = Banner.order("order" => "asc").all

    @content = Content.order("id" => "asc").all
  end
end
