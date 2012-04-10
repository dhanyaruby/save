class TraineeBatchesController < ApplicationController
  # GET /trainee_batches
  # GET /trainee_batches.json
  def index
    @trainee_batches = TraineeBatch.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @trainee_batches }
    end
  end

  # GET /trainee_batches/1
  # GET /trainee_batches/1.json
  def show
    @trainee_batch = TraineeBatch.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @trainee_batch }
    end
  end

  # GET /trainee_batches/new
  # GET /trainee_batches/new.json
  def new
    @trainee_batch = TraineeBatch.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @trainee_batch }
    end
  end

  # GET /trainee_batches/1/edit
  def edit
    @trainee_batch = TraineeBatch.find(params[:id])
  end

  # POST /trainee_batches
  # POST /trainee_batches.json
  def create
    @trainee_batch = TraineeBatch.new(params[:trainee_batch])

    respond_to do |format|
      if @trainee_batch.save
        format.html { redirect_to @trainee_batch, :notice => 'Trainee batch was successfully created.' }
        format.json { render :json => @trainee_batch, :status => :created, :location => @trainee_batch }
      else
        format.html { render :action => "new" }
        format.json { render :json => @trainee_batch.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /trainee_batches/1
  # PUT /trainee_batches/1.json
  def update
    @trainee_batch = TraineeBatch.find(params[:id])

    respond_to do |format|
      if @trainee_batch.update_attributes(params[:trainee_batch])
        format.html { redirect_to @trainee_batch, :notice => 'Trainee batch was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @trainee_batch.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /trainee_batches/1
  # DELETE /trainee_batches/1.json
  def destroy
    @trainee_batch = TraineeBatch.find(params[:id])
    @trainee_batch.destroy

    respond_to do |format|
      format.html { redirect_to trainee_batches_url }
      format.json { head :ok }
    end
  end
end
