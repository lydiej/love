class CraftTypesController < ApplicationController
  before_action :set_craft_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @craft_types = CraftType.all
    respond_with(@craft_types)
  end

  def show
    respond_with(@craft_type)
  end

  def new
    @craft_type = CraftType.new
    respond_with(@craft_type)
  end

  def edit
  end

  def create
    @craft_type = CraftType.new(craft_type_params)
    @craft_type.save
    respond_with(@craft_type)
  end

  def update
    @craft_type.update(craft_type_params)
    respond_with(@craft_type)
  end

  def destroy
    @craft_type.destroy
    respond_with(@craft_type)
  end

  private
    def set_craft_type
      @craft_type = CraftType.find(params[:id])
    end

    def craft_type_params
      params.require(:craft_type).permit(:c_type, :description)
    end
end
