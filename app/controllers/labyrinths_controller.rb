class LabyrinthsController < ApplicationController
  # GET /labyrinths
  # GET /labyrinths.xml
  # include ActionView::Helpers::UrlHelper

  def index
    @Crawler = Crawler.tag(request.remote_addr,request.user_agent)
    @Labyrinth = Labyrinth.generate
  end

  # GET /labyrinths/1
  # GET /labyrinths/1.xml
  def show
    @Crawler = Crawler.tag(request.remote_addr,request.user_agent)
    @Labyrinth = Labyrinth.generate
    
    Crawler.alert(@Crawler)

    spin = Labyrinth.wheel_of_errors
    case spin
      when 14..16 then error_404
      when 25..27 then error_401
    end
  end

  def error_404
    respond_to do |format|
      format.html { render :file => "#{Rails.root}/public/404.html", :status => :not_found } 
    end   
  end

  def error_401
    respond_to do |format|
      format.html { render :file => "#{Rails.root}/public/401.html", :status => :unauthorized }
    end
  end

end
