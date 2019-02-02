class ProgramsController < ApplicationController
  before_action :set_program, only: [:show]

  # GET /programs/1
  # GET /programs/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_program
      @program = Program.friendly.find(params[:id])
    end
end
