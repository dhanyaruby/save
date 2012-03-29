class TrainingCentersController < ApplicationController
  # GET /training_centers
  # GET /training_centers.json
  def index
    @training_centers = TrainingCenter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @training_centers }
    end
  end

  # GET /training_centers/1
  # GET /training_centers/1.json
  def show
    @training_center = TrainingCenter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @training_center }
    end
  end

  # GET /training_centers/new
  # GET /training_centers/new.json
  def new
    @training_center = TrainingCenter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @training_center }
    end
  end

  # GET /training_centers/1/edit
  def edit
    @training_center = TrainingCenter.find(params[:id])
  end

  # POST /training_centers
  # POST /training_centers.json
  def create
    @training_center = TrainingCenter.new(params[:training_center])

    respond_to do |format|
      if @training_center.save
        format.html { redirect_to @training_center, :notice => 'Training center was successfully created.' }
        format.json { render :json => @training_center, :status => :created, :location => @training_center }
      else
        format.html { render :action => "new" }
        format.json { render :json => @training_center.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /training_centers/1
  # PUT /training_centers/1.json
  def update
    @training_center = TrainingCenter.find(params[:id])

    respond_to do |format|
      if @training_center.update_attributes(params[:training_center])
        format.html { redirect_to @training_center, :notice => 'Training center was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @training_center.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /training_centers/1
  # DELETE /training_centers/1.json
  def destroy
    @training_center = TrainingCenter.find(params[:id])
    @training_center.destroy

    respond_to do |format|
      format.html { redirect_to training_centers_url }
      format.json { head :ok }
    end
  end
end
