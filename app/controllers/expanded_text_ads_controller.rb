class ExpandedTextAdsController < ApplicationController
  before_action :set_expanded_text_ad, only: [:show, :update, :destroy]

  # GET /expanded_text_ads
  # GET /expanded_text_ads.json
  def index
    @expanded_text_ads = ExpandedTextAd.all
  end

  # GET /expanded_text_ads/1
  # GET /expanded_text_ads/1.json
  def show
  end

  # POST /expanded_text_ads
  # POST /expanded_text_ads.json
  def create
    @expanded_text_ad = ExpandedTextAd.new(expanded_text_ad_params)

    if @expanded_text_ad.save
      render :show, status: :created, location: @expanded_text_ad
    else
      render json: @expanded_text_ad.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /expanded_text_ads/1
  # PATCH/PUT /expanded_text_ads/1.json
  def update
    if @expanded_text_ad.update(expanded_text_ad_params)
      render :show, status: :ok, location: @expanded_text_ad
    else
      render json: @expanded_text_ad.errors, status: :unprocessable_entity
    end
  end

  # DELETE /expanded_text_ads/1
  # DELETE /expanded_text_ads/1.json
  def destroy
    @expanded_text_ad.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expanded_text_ad
      @expanded_text_ad = ExpandedTextAd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expanded_text_ad_params
      params.require(:expanded_text_ad).permit(:xsi_type, :headline_part1, :headline_part2, :description, :path1, :path2, :ad_group_id)
    end
end
