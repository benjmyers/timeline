class TimelineObjectsController < ApplicationController
  before_filter :authenticate_user!

  # GET /timeline_objects
  # GET /timeline_objects.json
  def index
    @timeline_objects = TimelineObject.where(:user_id => current_user.id)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @timeline_objects }
    end
  end

  # GET /timeline_objects/1
  # GET /timeline_objects/1.json
  def show
    @timeline_object = TimelineObject.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @timeline_object }
    end
  end

  # GET /timeline_objects/new
  # GET /timeline_objects/new.json
  def new
    @timeline_object = TimelineObject.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @timeline_object }
    end
  end

  # GET /timeline_objects/1/edit
  def edit
    @timeline_object = TimelineObject.find(params[:id])
  end

  # POST /timeline_objects
  # POST /timeline_objects.json
  def create
    @timeline_object = TimelineObject.new(params[:timeline_object])
    @timeline_object.user_id = current_user.id
    respond_to do |format|
      if @timeline_object.save
        format.html { redirect_to @timeline_object, notice: 'Timeline object was successfully created.' }
        format.json { render json: @timeline_object, status: :created, location: @timeline_object }
      else
        format.html { render action: "new" }
        format.json { render json: @timeline_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /timeline_objects/1
  # PUT /timeline_objects/1.json
  def update
    @timeline_object = TimelineObject.find(params[:id])

    respond_to do |format|
      if @timeline_object.update_attributes(params[:timeline_object])
        format.html { redirect_to @timeline_object, notice: 'Timeline object was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @timeline_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /timeline_objects/1
  # DELETE /timeline_objects/1.json
  def destroy
    @timeline_object = TimelineObject.find(params[:id])
    @timeline_object.destroy

    respond_to do |format|
      format.html { redirect_to timeline_objects_url }
      format.json { head :no_content }
    end
  end
end
