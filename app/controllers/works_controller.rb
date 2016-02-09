class WorksController < ApplicationController
  def index
    @works = Work.joins(:artist).all
  end

  def new
    @works = Work.new
    @works.build_artist
    @works.genre.build
  end

  def create
    if @work = Work.create(work_params)
      redirect_to @work
    else
      render :new
    end
  end

  def edit
    @work = Work.find(params[:id])
    @work.genres.build
  end

  def update
    @work = Work.find(params[:id])

    if @work.update(work_params)
      redirect_to @work
    else
      render :edit
    end
  end

  def show
    @work = Work.find(params[:id])
  end

  private

  def work_params
    params.require(:work).permit(
      :title, :plot, :picture, :release_date,
      artist_attributes: [
        :name, :country
      ],
      genres_attributes: [
        :id, :name, :artist_id, :_destroy
      ]
    )
  end
end
