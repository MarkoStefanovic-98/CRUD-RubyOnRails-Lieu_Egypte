class LieuController < ApplicationController
  def index
    @lieu = Lieu.all
  end

  def show
    @lieu = Lieu.find(params[:id])
  end

  def new
    @lieu = Lieu.new
  end

  def create
    @lieu = Lieu.new(lieu_params)
    if @lieu.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @lieu = Lieu.find(params[:id])
  end

  def update
    @lieu = Lieu.find(params[:id])
    if @lieu.update(lieu_params)
      flash[:notice] = 'Lieu updated!'
      redirect_to root_path
    else
      flash[:error] = 'Failed to edit Lieu!'
      render :edit
    end
  end

  def destroy
    @lieu = Lieu.find(params[:id])
    if @lieu.delete
      flash[:notice] = 'Lieu deleted!'
      redirect_to root_path
    else
      flash[:error] = 'Failed to delete this lieu!'
      render :destroy
    end
  end

  def lieu_params
    params.require(:lieu).permit(:NomLieu, :description, :situation)
  end


end
