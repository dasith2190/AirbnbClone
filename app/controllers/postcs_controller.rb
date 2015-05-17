class PostcsController < ApplicationController
  before_action :set_postc, only: [:show, :edit, :update, :destroy]

  @post_typ= ['Apartment', 'House']

  # GET /postcs
  # GET /postcs.json
  def index
    #@user_idfk=current_user.id

    if session_information
    @postcs = Postc.where(user_idfk: current_user.id)
      end
  end

  # GET /postcs/1
  # GET /postcs/1.json
  def show
    @id=params[:id]
    @pics = Picture.where(post_id_fk: @id)
    @reviews=Review.where(post_idfk: @id)

    @re=Review.new

  end

  # GET /postcs/new
  def new
    if session_information
    @new_page=true
    @picture=Picture.new
    @postc = Postc.new
      end
  end

  # GET /postcs/1/edit
  def edit
  end

  # POST /postcs
  # POST /postcs.json
  def create
    @postc = Postc.new(postc_params)
    @postc.user_idfk=current_user.id

    @picture=Picture.new(picture_param)

    respond_to do |format|
      if @postc.save
        @picture.post_id_fk=@postc.id
        @picture.save


        format.html { redirect_to @postc, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @postc }
      else
        format.html { render :new }
        format.json { render json: @postc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postcs/1
  # PATCH/PUT /postcs/1.json
  def update
    respond_to do |format|
      if @postc.update(postc_params)
        format.html { redirect_to @postc, notice: 'Postc was successfully updated.' }
        format.json { render :show, status: :ok, location: @postc }
      else
        format.html { render :edit }
        format.json { render json: @postc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postcs/1
  # DELETE /postcs/1.json
  def destroy
    @postc.destroy

    respond_to do |format|
      format.html { redirect_to postcs_url, notice: 'Postc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postc
      @postc = Postc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def postc_params
      params.require(:postc).permit(:user_idfk,  :post_title,  :post_description, :address,  :country,  :zip,  :city,  :price, :home_type, :rooms, :baths,  :price,  :price_type)
    end


  def picture_param
    params.require(:picture).permit(:image_url, :image2, :image3)
  end
    #Tests if the user is logged in, if they are not the page is redirected
  def session_information
    @user_id=current_user
      if @user_id.nil?
      #render :text => 'inside nil'

      #Make sure to change this
      redirect_to home_home_url
        return false
      end
    return true
  end
end
