class BucketsController < ApplicationController

  def index
    @buckets = Bucket.order(:id).page(params[:page]).per(50)
    @bucket = Bucket.new
  end

  def new
    @bucket = Bucket.new
  end

  def create
    @bucket = Bucket.create(bucket_params)
    if @bucket.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def bucket_params
    params.require(:bucket).permit(:item, :description)
  end
end
