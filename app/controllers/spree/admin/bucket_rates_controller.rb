class Spree::BucketRatesController < Spree::Admin::BaseController
  before_filter :load_bucket_rate,  only: [:show, :edit, :update, :destroy]

  def index
    @bucket_rates = Spree::BucketRate.all
  end

  def show
  end

  def new
    @bucket_rate = Spree::BucketRate.new
  end

  def edit
  end

  def create
    @bucket_rate = Spree::BucketRate.new(params[:admin_bucket_rate])

    respond_to do |format|
      if @bucket_rate.save
        if params["commit"] == "Create Another"
          format.html {
            @bucket_rate = Spree::BucketRate.new(calculator_id: @bucket_rate.calculator_id)
            flash[:notice] = 'Bucket rate was successfully created.'
            render action: "new"
          }
        else
          format.html { redirect_to admin_bucket_rates_path, notice: 'Bucket rate was successfully created.' }
        end
        format.json { render json: admin_bucket_rates_url, status: :created, location: @bucket_rate }
      else
        format.html { render action: "new" }
        format.json { render json: @bucket_rate.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @bucket_rate.update_attributes(params[:admin_bucket_rate])
        format.html { redirect_to admin_bucket_rates_url, notice: 'Bucket rate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bucket_rate.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @bucket_rate.destroy

    respond_to do |format|
      format.html { redirect_to admin_bucket_rates_url }
      format.json { head :no_content }
    end
  end

  private

  def load_bucket_rate
    @bucket_rate = Spree::BucketRate.find(params[:id])
  end

end
