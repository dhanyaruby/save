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


  # GET /trainees/new
  # GET /trainees/new.json
  def new
    @trainees = TraineeBatch.new([], params[:training_calendar_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @trainees }
    end
  end

  # POST /trainees
  # POST /trainees.json
  def create
    @trainees = TraineeBatch.new(params[:participants][:ids], params[:training_calendar_id])
    respond_to do |format|
      if @trainees.save
        format.html { redirect_to training_calendar_path(params[:training_calendar_id]), :notice => 'The participant(s) were successfully added.' }
        format.json { render :json => @trainees, :status => :created, :location => @trainees }
      else
        format.html { render :action => "new" }
        format.json { render :json => @trainees.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /trainees/1
  # DELETE /trainees/1.json
  def destroy
    @trainee = Trainee.find(params[:id])
    @trainee.destroy
    respond_to do |format|
      format.html { redirect_to training_calendar_trainees_path(params[:training_calendar_id]), :notice => 'The participant was successfully removed.' }
      format.json { head :ok }
    end
  end
end
