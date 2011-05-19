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

  # GET /crawlers/1
  # GET /crawlers/1.xml
  def show
    @crawler = Crawler.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @crawler }
    end
  end

  # GET /crawlers/new
  # GET /crawlers/new.xml
  def new
    @crawler = Crawler.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @crawler }
    end
  end

  # GET /crawlers/1/edit
  def edit
    @crawler = Crawler.find(params[:id])
  end

  # POST /crawlers
  # POST /crawlers.xml
  def create
    @crawler = Crawler.new(params[:crawler])

    respond_to do |format|
      if @crawler.save
        format.html { redirect_to(@crawler, :notice => 'Crawler was successfully created.') }
        format.xml  { render :xml => @crawler, :status => :created, :location => @crawler }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @crawler.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /crawlers/1
  # PUT /crawlers/1.xml
  def update
    @crawler = Crawler.find(params[:id])

    respond_to do |format|
      if @crawler.update_attributes(params[:crawler])
        format.html { redirect_to(@crawler, :notice => 'Crawler was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @crawler.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /crawlers/1
  # DELETE /crawlers/1.xml
  def destroy
    @crawler = Crawler.find(params[:id])
    @crawler.destroy

    respond_to do |format|
      format.html { redirect_to(crawlers_url) }
      format.xml  { head :ok }
    end
  end
end
