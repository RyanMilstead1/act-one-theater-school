class FacultiesController < ApplicationController
  before_action :set_faculty, only: [:show, :edit, :update, :destroy]

  # GET /faculties
  def index
    @faculties = Faculty.all
  end

  # GET /faculties/1
  def show
  end

  # GET /faculties/new
  def new
    @faculty = Faculty.new
  end

  # GET /faculties/1/edit
  def edit
  end

  # POST /faculties
  def create
    @faculty = Faculty.new(faculty_params)

    if @faculty.save
      redirect_to @faculty, notice: 'Faculty was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /faculties/1
  def update
    if @faculty.update(faculty_params)
      redirect_to @faculty, notice: 'Faculty was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /faculties/1
  def destroy
    @faculty.destroy
    redirect_to faculties_url, notice: 'Faculty was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faculty
      @faculty = Faculty.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def faculty_params
      params.fetch(:faculty, {})
    end
end
