class ChecksController < ApplicationController
  before_action :authorize_user, only: %i[ edit update destroy ]

  # GET /checks or /checks.json
  def index
    @checks = Current.user.admin ? Check.all : Current.user.checks.all
  end

  # GET /checks/new
  def new
    @check = Check.new
  end

  # GET /checks/1/edit
  def edit
  end

  # POST /checks or /checks.json
  def create
    @check = Check.new(check_params)
    @check.user_id = Current.user.id

    respond_to do |format|
      if @check.save
        format.html { redirect_to checks_path, notice: "Inspection was successfully created." }
        format.json { render :show, status: :created, location: @check }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @check.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /checks/1 or /checks/1.json
  def update
    respond_to do |format|
      puts "**** params[:check][:images] = #{params[:check][:images]}"
      if params[:check][:images]
        puts "**** there are images"
        @check.images.attach(params[:check][:images])
      end
      if @check.update(check_params.except(:images))
        format.html { redirect_to checks_path, notice: "Inspection was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @check }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @check.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /checks/1 or /checks/1.json
  def destroy
    @check.destroy!

    respond_to do |format|
      format.html { redirect_to checks_path, notice: "Check was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  def destroy_multiple_images
    puts "**** destroy_multiple_images"
    puts "**** params[:deleted_img_ids] = #{params[:deleted_img_ids]}"
    attachments = ActiveStorage::Attachment.where(id: params[:deleted_img_ids])
    attachments.map(&:purge)
    redirect_to checks_path, notice: "Inspection images successfully deleted.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def authorize_user
      @check = Check.find(params.expect(:id))
      unless @check.user == Current.user || Current.user.admin
        redirect_to checks_url, alert: "You are not authorized to perform this action."
      end
    end

    # Only allow a list of trusted parameters through.
    def check_params
      params.expect(check: [ :origin, :destionation, :trip_date, :truck_tag, :trailer_tag,
      :truck_clearance_lights, :headlights, :level, :leaks, :alternator, :alternator_wires,
      :water_pump, :wp_hoses, :belt, :air_compressor, :ac_hoses, :coolant_reservoir,
      :cr_hoses, :oil_stick, :steering_reservoir, :sr_hoses, :steering_shaft, :ss_universal_joint,
      :steering_gearbox, :sg_hoses, :pitman_arm, :tf_leaf_spring_mounts, :tf_leaf_springs,
      :tf_u_bolts, :tf_shock_absorbers, :tf_br_hosess, :tf_chambers, :tf_slacks, :tf_shoes,
      :tf_drums, :tf_br_tires, :tf_rims, :tf_lugs, :tf_hubs, :tf_valves, :brackets, :tractor_handles,
      :tractor_doors, :door_seals, :door_steps, :tankss, :chain, :exhaust, :frame, :driveshaft,
      :ds_universal_joint, :tr_br_hosess, :tr_chambers, :tr_slacks, :tr_shoes, :tr_drums,
      :tr_leaf_spring_mounts, :tr_leaf_springs, :tr_u_bolts, :tr_shock_absorbers,
      :tractor_airbags, :tr_tires, :tr_rims, :tr_lugs, :tr_hubs, :tr_valves, :tr_muds,
      :tr_lights, :space, :front_clearance, :front_panels, :side_panels,
      :side_dot, :trailer_frame, :gear, :floor, :cross, :trailer_air_lines, :trailer_br_hoses,
      :trailer_chambers, :trailer_slacks, :trailer_shoes, :trailer_drums, :trailer_leaf_spring_mounts,
      :trailer_leaf_springs, :trailer_u_bolts, :trailer_shock_absorbers, :trailer_airbags,
      :trailer_tires, :trailer_rims, :trailer_lugs, :trailer_hubs, :trailer_valves, :trailer_muds,
      :abs_light, :rear_clearance, :rear_dot, :trailer_handles, :trailer_doors, :trailer_lights,
      :bumper, :coupling_air_lines, :gladhands, :coupling_electric_lines, :apron, :skid_plate,
      :pivot_pin, :lock_release, :platform, :kingpin, :chocks, :seat_belt, :cab_abs, :air_govenor,
      :leak, :low_air, :pop_out, :trailer_brake, :tractor_brake, :service_brake, :notes, images: [] ])
    end
end
