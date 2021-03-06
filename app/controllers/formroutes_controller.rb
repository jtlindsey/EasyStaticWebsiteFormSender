class FormroutesController < ApplicationController
  before_action :authenticate_user!, except: [:newhttp]
  before_action :set_formroute, only: [:show, :edit, :update, :destroy]
  rescue_from ActionController::RoutingError, with: :newhttp

  # handles 422 (Unprocessable Entity)
  skip_before_filter :verify_authenticity_token, only: [:newhttp]

  def newhttp
    data, errors, statusCode = Formroute.authenticateMessage(request, params)
    errors = Formroute.changeValidationAttrNames(errors)
    render status: statusCode, json: errors
  end

  # GET /formroutes
  # GET /formroutes.json
  def index
    @formroutes = current_user.formroutes
  end

  # GET /formroutes/1
  # GET /formroutes/1.json
  def show
  end

  # GET /formroutes/new
  def new
    @formroute = current_user.formroutes.build
  end

  # GET /formroutes/1/edit
  def edit
  end

  # POST /formroutes
  # POST /formroutes.json
  def create
    @formroute = current_user.formroutes.build(formroute_params)

    respond_to do |format|
      if @formroute.save
        format.html { redirect_to @formroute, notice: 'Formroute was successfully created.' }
        format.json { render :show, status: :created, location: @formroute }
      else
        format.html { render :new }
        format.json { render json: @formroute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formroutes/1
  # PATCH/PUT /formroutes/1.json
  def update
    respond_to do |format|
      if @formroute.update(formroute_params)
        format.html { redirect_to @formroute, notice: 'Formroute was successfully updated.' }
        format.json { render :show, status: :ok, location: @formroute }
      else
        format.html { render :edit }
        format.json { render json: @formroute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formroutes/1
  # DELETE /formroutes/1.json
  def destroy
    @formroute.destroy
    respond_to do |format|
      format.html { redirect_to formroutes_url, notice: 'Formroute was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formroute
      @formroute = current_user.formroutes.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def formroute_params
      params.require(:formroute).permit(:name, :page, :fwd_to_email)
    end
end