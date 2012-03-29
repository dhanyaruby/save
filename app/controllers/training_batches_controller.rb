class TrainingBatchesController < ApplicationController
  # GET /training_batches
  # GET /training_batches.json
  def index
    @training_batches = TrainingBatch.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @training_batches }
    end
  end

  # GET /training_batches/1
  # GET /training_batches/1.json
  def show
    @training_batch = TrainingBatch.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @training_batch }
    end
  end

  # GET /training_batches/new
  # GET /training_batches/new.json
  def new
    @training_batch = TrainingBatch.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @training_batch }
    end
  end

  # GET /training_batches/1/edit
  def edit
    @training_batch = TrainingBatch.find(params[:id])
  end

  # POST /training_batches
  # POST /training_batches.json
  def create
    @training_batch = TrainingBatch.new(params[:training_batch])

    respond_to do |format|
      if @training_batch.save
        format.html { redirect_to @training_batch, :notice => 'Training batch was successfully created.' }
        format.json { render :json => @training_batch, :status => :created, :location => @training_batch }
      else
        format.html { render :action => "new" }
        format.json { render :json => @training_batch.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /training_batches/1
  # PUT /training_batches/1.json
  def update
    @training_batch = TrainingBatch.find(params[:id])

    respond_to do |format|
      if @training_batch.update_attributes(params[:training_batch])
        format.html { redirect_to @training_batch, :notice => 'Training batch was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @training_batch.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /training_batches/1
  # DELETE /training_batches/1.json
  def destroy
    @training_batch = TrainingBatch.find(params[:id])
    @training_batch.destroy

    respond_to do |format|
      format.html { redirect_to training_batches_url }
      format.json { head :ok }
    end
  end
end
