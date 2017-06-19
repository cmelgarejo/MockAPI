class AdGroupsController < ApplicationController
  before_action :set_ad_group, only: [:show, :update, :destroy]

  # GET /ad_groups
  # GET /ad_groups.json
  def index
    @ad_groups = AdGroup.all
  end

  # GET /ad_groups/1
  # GET /ad_groups/1.json
  def show
  end

  # POST /ad_groups
  # POST /ad_groups.json
  def create
    @ad_group = AdGroup.new(ad_group_params)

    if @ad_group.save
      render :show, status: :created, location: @ad_group
    else
      render json: @ad_group.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ad_groups/1
  # PATCH/PUT /ad_groups/1.json
  def update
    if @ad_group.update(ad_group_params)
      render :show, status: :ok, location: @ad_group
    else
      render json: @ad_group.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ad_groups/1
  # DELETE /ad_groups/1.json
  def destroy
    @ad_group.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ad_group
      @ad_group = AdGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ad_group_params
      params.require(:ad_group).permit(:name, :status, :campaign_id)
    end
end
