class SanctionsController < ApplicationController
  def index
    @sanctions = Sanction.all
  end

  def new
    @sanction = Sanction.new
  end

  def create
    @sanction = Sanction.new sanction_params
    @sanction.name = titleize(@sanction.name)
    unless Sanction.find_by(name: @sanction.name).present?
      @sanction.save
      @error = ''
      redirect_to @sanction
    else
      @error = "Entry with this name already exists!"
      render new_sanction_path
    end
  end

  def edit
  end

  def show
  end
end

private
  def titleize(str)
    str.split(/ |\_/).map(&:capitalize).join(" ")
  end

  def sanction_params
    params.require(:sanction).permit(:name, :nationality, :risk, :image)
  end
