class CoreStrengthClassesController < ApplicationController
  before_action :set_core_strength_class, only: %i[ show edit update destroy ]

  # GET /core_strength_classes or /core_strength_classes.json
  def index
    @core_strength_classes = CoreStrengthClass.all
  end

  # GET /core_strength_classes/1 or /core_strength_classes/1.json
  def show
  end

  # GET /core_strength_classes/new
  def new
    @core_strength_class = CoreStrengthClass.new
  end

  # GET /core_strength_classes/1/edit
  def edit
  end

  # POST /core_strength_classes or /core_strength_classes.json
  def create
    @core_strength_class = CoreStrengthClass.new(core_strength_class_params)

    respond_to do |format|
      if @core_strength_class.save
        format.html { redirect_to core_strength_class_url(@core_strength_class), notice: "Core strength class was successfully created." }
        format.json { render :show, status: :created, location: @core_strength_class }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @core_strength_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /core_strength_classes/1 or /core_strength_classes/1.json
  def update
    respond_to do |format|
      student_ids = core_strength_class_params[:student_ids]

      @core_strength_class.core_strength_classes_students.create(student_id: student_ids.first)
      if @core_strength_class.update(core_strength_class_params)
        format.html { redirect_to core_strength_class_url(@core_strength_class), notice: "Core strength class was successfully updated." }
        format.json { render :show, status: :ok, location: @core_strength_class }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @core_strength_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core_strength_classes/1 or /core_strength_classes/1.json
  def destroy
    @core_strength_class.destroy

    respond_to do |format|
      format.html { redirect_to core_strength_classes_url, notice: "Core strength class was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_core_strength_class
      @core_strength_class = CoreStrengthClass.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def core_strength_class_params
      params.require(:core_strength_class)
            .permit(:name, :start_date, :end_date, :timezone, :description, :facilitator_id, student_ids: [] )
    end
end
