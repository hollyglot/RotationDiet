class FoodFamiliesController < ApplicationController
  # GET /food_families
  # GET /food_families.json
  def index
    @food_families = FoodFamily.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @food_families }
    end
  end

  # GET /food_families/1
  # GET /food_families/1.json
  def show
    @food_family = FoodFamily.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @food_family }
    end
  end

  # GET /food_families/new
  # GET /food_families/new.json
  def new
    @food_family = FoodFamily.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @food_family }
    end
  end

  # GET /food_families/1/edit
  def edit
    @food_family = FoodFamily.find(params[:id])
  end

  # POST /food_families
  # POST /food_families.json
  def create
    @food_family = FoodFamily.new(params[:food_family])

    respond_to do |format|
      if @food_family.save
        format.html { redirect_to @food_family, notice: 'Food family was successfully created.' }
        format.json { render json: @food_family, status: :created, location: @food_family }
      else
        format.html { render action: "new" }
        format.json { render json: @food_family.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /food_families/1
  # PUT /food_families/1.json
  def update
    @food_family = FoodFamily.find(params[:id])

    respond_to do |format|
      if @food_family.update_attributes(params[:food_family])
        format.html { redirect_to @food_family, notice: 'Food family was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @food_family.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_families/1
  # DELETE /food_families/1.json
  def destroy
    @food_family = FoodFamily.find(params[:id])
    @food_family.destroy

    respond_to do |format|
      format.html { redirect_to food_families_url }
      format.json { head :no_content }
    end
  end
end
