class SynthwearsController < ApplicationController

  def index
    # render json: {message: "<< CyberHunk Synthwear >>"}
    @synthwears = Synthwear.all
    render :index
  end

  def show
    @synthwear = Synthwear.find_by(id: params[:id])
    render :show
  end

  def create
    @synthwear = Synthwear.new(
    name: name = params[:name],
    price: price = params[:price],
    description: description = params[:description],
    image_url: image_url = params[:image_url]
    )
    @synthwear.save
    render :show
  end

  def update
    @synthwear = Synthwear.find_by(id: params[:id])
    @synthwear.name = params[:name] || @synthwear.name
    @synthwear.price = params[:price] || @synthwear.price
    @synthwear.description = params[:description] || @synthwear.description
    @synthwear.image_url = params[:image_url] || @synthwear.image_url

    @synthwear.save
    render :show
  end

  def destroy
    @synthwear = Synthwear.find_by(id: params[:id])
    @synthwear.destroy
    render json: { message: "synthwear destroyed successfully" }
  end

 end
