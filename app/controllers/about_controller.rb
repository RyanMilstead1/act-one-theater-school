class AboutController < ApplicationController
  def index; end

  def founder; end

  def faculty
    @faculty = Faculty.all
  end

  def locations; end

  def contact; end
end
