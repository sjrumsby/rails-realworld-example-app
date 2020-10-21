class SegmentsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @segments = Segment.all
    @segments = @segments.order(created_at: :desc).offset(params[:offset] || 0).limit(params[:limit] || 20)
  end

  def create
    @segment = Segment.new(segment_params)

    if @segment.save
      render :show
    else
      render json: { errors: @segment.errors }, status: :unprocessable_entity
    end
  end

  def show
    @segment = Segment.find(params[:id])
  end
end
