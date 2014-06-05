class CitizenshipClassesController < ApplicationController
  before_filter :load_parent
  
  def load_parent
    @grantee = Grantee.find(params[:grantee_id])
  end
  
  # GET /citizenship_classes
  # GET /citizenship_classes.json
  def index
    @citizenship_classes = @grantee.citizenship_classes.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @citizenship_classes }
    end
  end

  # GET /citizenship_classes/1
  # GET /citizenship_classes/1.json
  def show
    @citizenship_class = @grantee.citizenship_classes.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @citizenship_class }
    end
  end

  # GET /citizenship_classes/new
  # GET /citizenship_classes/new.json
  def new
    @citizenship_class = @grantee.citizenship_classes.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @citizenship_class }
    end
  end

  # GET /citizenship_classes/1/edit
  def edit
    @citizenship_class = @grantee.citizenship_classes.find(params[:id])
  end

  # POST /citizenship_classes
  # POST /citizenship_classes.json
  def create
    @citizenship_class = @grantee.citizenship_classes.new(params[:citizenship_class])

    respond_to do |format|
      if @citizenship_class.save
        format.html { redirect_to [@grantee, @citizenship_class], notice: 'Citizenship class was successfully created.' }
        format.json { render json: @citizenship_class, status: :created, location: @citizenship_class }
      else
        format.html { render action: "new" }
        format.json { render json: @citizenship_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /citizenship_classes/1
  # PUT /citizenship_classes/1.json
  def update
    @citizenship_class = @grantee.citizenship_classes.find(params[:id])

    respond_to do |format|
      if @citizenship_class.update_attributes(params[:citizenship_class])
        format.html { redirect_to [@grantee, @citizenship_class], notice: 'Citizenship class was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @citizenship_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /citizenship_classes/1
  # DELETE /citizenship_classes/1.json
  def destroy
    @citizenship_class = @grantee.citizenship_classes.find(params[:id])
    @citizenship_class.destroy

    respond_to do |format|
      format.html { redirect_to grantee_path(@grantee) }
      format.json { head :no_content }
    end
  end
end
