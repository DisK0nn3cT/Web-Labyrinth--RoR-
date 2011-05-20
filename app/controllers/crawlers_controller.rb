class CrawlersController < ApplicationController
  # GET /crawlers
  # GET /crawlers.xml
  def index
    @crawlers = Crawler.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @crawlers }
    end
  end
end
