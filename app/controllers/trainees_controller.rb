class TraineesController < ApplicationController
  # GET /trainees
  # GET /trainees.json
  def index
    @trainees = Trainee.find_all_by_training_calendar_id(params[:training_calendar_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @trainees }
    end
  end

  # GET /trainees/1
  # GET /trainees/1.json
  def show
    @trainee = Trainee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @trainee }
    end
  end

  # GET /trainees/new
  # GET /trainees/new.json
  def new
    @trainee = Trainee.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @trainee }
    end
  end

  # GET /trainees/1/edit
  def edit
    @trainee = Trainee.find(params[:id])
  end

  # POST /trainees
  # POST /trainees.json
  def create
    @trainees = TraineeBatch.new(params[:trainees][:ids], params[:training_calendar_id])
    respond_to do |format|
      if @trainees.save
        format.html { redirect_to @trainees, :notice => 'The batch was successfully created.' }
        format.json { render :json => @trainees, :status => :created, :location => @trainees }
      else
        format.html { render :action => "new" }
        format.json { render :json => @trainees.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /trainees/1
  # PUT /trainees/1.json
  def update
    @trainee = Trainee.find(params[:id])

    respond_to do |format|
      if @trainee.update_attributes(params[:trainee])
        format.html { redirect_to @trainee, :notice => 'Trainee was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @trainee.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /trainees/1
  # DELETE /trainees/1.json
  def destroy
    @trainee = Trainee.find(params[:id])
    @trainee.destroy

    respond_to do |format|
      format.html { redirect_to trainees_url }
      format.json { head :ok }
    end
  end
end
