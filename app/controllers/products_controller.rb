class ProductsController < ApplicationController
  before_action :set_product, only: %i[show edit update destroy]

  respond_to :json, :html

  # GET /products
  # GET /products.json
  def index
    if params[:q]
      search_term = params[:q]
      @products = Product.where('LOWER(name) LIKE ? OR LOWER(description) LIKE ?', "%#{search_term.downcase}%",
                                "%#{search_term.downcase}")
    else
      @products = Product.all
    end
    respond_with @products
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])
    # @comments = @product.comments.order(created_at: :desc)
    @comments = @product.comments.paginate(page: params[:page], per_page: 3).order(created_at: :desc)
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit; end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_back fallback_location: root_path, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_back fallback_location: root_path, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def product_params
    params.require(:product).permit(:name, :description, :image_url, :price)
  end
end
