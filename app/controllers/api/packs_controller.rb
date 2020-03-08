class Api::PacksController < ApplicationController
  def index
    @packs = Pack.all
    render "index.json.jb"
  end

  def create
    @pack = Pack.new(
      name: params[:name],
      price: params[:price],
      color: params[:color]
    )
    @pack.save
    render "show.json.jb"
  end

  def show
    @pack = Pack.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @pack = Pack.find_by(id: params[:id])
    @pack.name = params[:name] || @pack.name
    @pack.color = params[:color] || @pack.color
    @pack.price = params[:price] || @pack.price
    render "show.json.jb"
  end

  def destroy
    pack = Pack.find_by(id: params[:id])
    pack.destroy
    render json: {message: "Pack successfully destroyed."}
  end
end
