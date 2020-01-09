class LogsController < ApplicationController
  def index
    @logs = Log.all
    render json: @logs
  end

  def create
    @log = Log.new(log_params)
    if @log.save
      render json: @log
    else
      render json: {error: 'Oops! Missing information'}
    end
  end

  def show
    @log = Log.find(params[:id])
    render json: @log
  end

  def delete
    @log = Log.find(params[:id])
    @log.destroy
  end

  private

  def log_params
    params.require(:log).permit(:workouts, :time)
  end
end
