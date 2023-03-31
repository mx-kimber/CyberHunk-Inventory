class SynthwearController < ApplicationController

  def index
    # render json: {message: "<< CyberHunk Synthwear >>"}
    @synthwear = Synthwear.all
    render :index
  end

  def show
    @synthwear = Synthwear.find_by(id: params[:id])
    render :show
  end

  def create
    @synthwear = Synthwear.create(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      image_url: params[:image_url]
    )
    render :show
  end

  def update
    @synthwear = Synthwear.find_by(id: params[:id])
    @synthwear.update(
      name: params[:name] || @synthwear.name,
      width: params[:price] || @synthwear.price,
      description: params[:description] || @synthwear.description,
      image_url: params[:image_url] || @synthwear.image_url
    )
    render :show
  end

  def destroy
    @synthwear = synthwear.find_by(id: params[:id])
    @synthwear.destroy
    render json: { message: "synthwear destroyed successfully" }
  end

 end
