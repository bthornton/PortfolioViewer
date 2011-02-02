class EpicsController < ApplicationController
  # GET /epics
  # GET /epics.xml
  def index
    @epics = Epic.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @epics }
    end
  end

  # GET /epics/1
  # GET /epics/1.xml
  def show
    @epic = Epic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @epic }
    end
  end

  # GET /epics/new
  # GET /epics/new.xml
  def new
    @epic = Epic.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @epic }
    end
  end

  # GET /epics/1/edit
  def edit
    @epic = Epic.find(params[:id])
  end

  # POST /epics
  # POST /epics.xml
  def create
    @epic = Epic.new(params[:epic])

    respond_to do |format|
      if @epic.save
        format.html { redirect_to(@epic, :notice => 'Epic was successfully created.') }
        format.xml  { render :xml => @epic, :status => :created, :location => @epic }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @epic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /epics/1
  # PUT /epics/1.xml
  def update
    @epic = Epic.find(params[:id])

    respond_to do |format|
      if @epic.update_attributes(params[:epic])
        format.html { redirect_to(@epic, :notice => 'Epic was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @epic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /epics/1
  # DELETE /epics/1.xml
  def destroy
    @epic = Epic.find(params[:id])
    @epic.destroy

    respond_to do |format|
      format.html { redirect_to(epics_url) }
      format.xml  { head :ok }
    end
  end
end
