class TrainingCalendarsController < ApplicationController
  # GET /training_calendars
  # GET /training_calendars.json
  def index
    @training_calendars = TrainingCalendar.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @training_calendars }
    end
  end

  # GET /training_calendars/1
  # GET /training_calendars/1.json
  def show
    @training_calendar = TrainingCalendar.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @training_calendar }
    end
  end

  # GET /training_calendars/new
  # GET /training_calendars/new.json
  def new
    load_dependents
    @training_calendar = TrainingCalendar.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @training_calendar }
    end
  end

  # GET /training_calendars/1/edit
  def edit
    load_dependents
    @training_calendar = TrainingCalendar.find(params[:id])
  end

  # POST /training_calendars
  # POST /training_calendars.json
  def create
    @training_calendar        = TrainingCalendar.new(params[:training_calendar])
    @training_calendar.status = TrainingCalendar::NOT_STARTED
    respond_to do |format|
      if @training_calendar.save
        TraineeBatch.new(:training_calendar_id => @training_calendar.id).save
        format.html { redirect_to @training_calendar, :notice => 'Training calendar was successfully created.' }
        format.json { render :json => @training_calendar, :status => :created, :location => @training_calendar }
      else
        load_dependents
        format.html { render :action => "new" }
        format.json { render :json => @training_calendar.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /training_calendars/1
  # PUT /training_calendars/1.json
  def update
    @training_calendar = TrainingCalendar.find(params[:id])

    respond_to do |format|
      if @training_calendar.update_attributes(params[:training_calendar])
        format.html { redirect_to @training_calendar, :notice => 'Training calendar was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @training_calendar.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /training_calendars/1
  # DELETE /training_calendars/1.json
  def destroy
    @training_calendar = TrainingCalendar.find(params[:id])
    @training_calendar.destroy

    respond_to do |format|
      format.html { redirect_to training_calendars_url }
      format.json { head :ok }
    end
  end

  def load_dependents
    @training_centers = TrainingCenter.all
    @courses          = Course.all
  end
end
