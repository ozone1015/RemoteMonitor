class InputsController < ApplicationController
  # GET /inputs
  # GET /inputs.xml
  def index
    @inputs = Input.find(:all, :conditions => ["node_id == ?", params[:node_id]])
    #@inputs = Input.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @inputs }
    end
  end

  # GET /inputs/1
  # GET /inputs/1.xml
  def show
    @input = Input.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @input }
    end
  end

  # GET /inputs/new
  # GET /inputs/new.xml
  def new
    @input = Input.new
    @input.node_id = params[:node_id]
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @input }
    end
  end

  # GET /inputs/1/edit
  def edit
    @input = Input.find(params[:id])
  end

  # POST /inputs
  # POST /inputs.xml
  def create
    @input = Input.new(params[:input])
    @input.created_at = DateTime.now
    @input.updated_at = DateTime.now
    
    respond_to do |format|
      if @input.save
        format.html { redirect_to(@input, :notice => 'Input was successfully created.') }
        format.xml  { render :xml => @input, :status => :created, :location => @input }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @input.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /inputs/1
  # PUT /inputs/1.xml
  def update
    @input = Input.find(params[:id])

    respond_to do |format|
      if @input.update_attributes(params[:input])
        format.html { redirect_to(@input, :notice => 'Input was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @input.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /inputs/1
  # DELETE /inputs/1.xml
  def destroy
    @input = Input.find(params[:id])
    @input.destroy

    respond_to do |format|
      format.html { redirect_to(inputs_url) }
      format.xml  { head :ok }
    end
  end
end
