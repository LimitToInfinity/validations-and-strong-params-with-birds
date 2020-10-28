class BirdsController < ApplicationController

  def index
    @birds = Bird.all
    render json: @birds
  end

  def create
    @bird = Bird.new(bird_params)

    if @bird.valid?
      @bird.save
      render json: @bird, status: :created
    else
      render json:
        { errors: @bird.errors.full_messages },
        status: :unprocessable_entity
    end
  end

  private

  def bird_params
    params.require(:bird).permit(:name, :color, :age)
  end

end
