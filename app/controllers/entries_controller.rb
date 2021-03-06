class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :update, :destroy]

  # GET users/1/entries
  def index
    @entries = Entry.all

    render json: @entries
  end

  # GET users/1/entries/1
  def show
    render json: @entry
  end

  # POST users/1/entries
  def create
    @entry = Entry.new(entry_params)
    @entry.user_id = params[:user_id]

    if @entry.save
      render json: @entry, status: :created
    else
      render json: @entry.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT users/1/entries/1
  def update
    if @entry.update(entry_params)
      render json: @entry
    else
      render json: @entry.errors, status: :unprocessable_entity
    end
  end

  # DELETE /entries/1
  def destroy
    @entry.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_entry
    @entry = Entry.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def entry_params
    params.require(:entry).permit(:weight, :unit, :date)
  end
end
