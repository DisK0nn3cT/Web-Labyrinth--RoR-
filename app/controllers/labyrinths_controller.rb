class LabyrinthsController < ApplicationController
  before_filter :set_crawler_and_labyrinth
  before_filter :random_errors, :only => [:show]

  # GET /labyrinths
  def index
  end

  # GET /labyrinths/1
  def show
    Crawler.alert(@Crawler)
  end

  private

  def set_crawler_and_labyrinth
    @Crawler = Crawler.tag(request.remote_addr,request.user_agent)
    @Labyrinth = Labyrinth.generate
  end

  def random_errors
    case Labyrinth.wheel_of_errors
      when 14..16 then error_404
      when 25..27 then error_401
    end
  end

  def error_404
    render :file => "#{Rails.root}/public/404.html", :status => :not_found
  end

  def error_401
    render :file => "#{Rails.root}/public/401.html", :status => :unauthorized
  end


end
