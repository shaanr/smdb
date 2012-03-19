class SitesController < ApplicationController
  
  def list
    @sites = Site.order("sites.name ASC")
  end
  
  
  def new
    @site = Site.new(:name=>"")
  end
  
  def create
    @site = Site.new(params[:site])
    if @site.save
      redirect_to(:action=>'list')
    else
      render('new')
    end
  end
  
  def edit
    @site = Site.find(params[:id])
  end
  
  def update
    
    @site = Site.find(params[:id])
    
    if @site.update_attributes(params[:site])
      redirect_to(:action =>'list')
    else
      render('new')
    end
  end
  
end
