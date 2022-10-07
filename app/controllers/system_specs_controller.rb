class SystemSpecsController < ApplicationController
  before_action :set_system_spec, only: %i[ show edit update destroy ]
  require 'facter'
  require 'sys-uname'
  require 'usagewatch'
  require 'free_disk_space'


  # GET /system_specs or /system_specs.json
  def index
    @system_specs = SystemSpec.all
  end

  # GET /system_specs/1 or /system_specs/1.json
  def show
  end

  # GET /system_specs/new
  def new
    @system_spec = SystemSpec.new
  end

  # GET /system_specs/1/edit
  def edit
  end

  # POST /system_specs or /system_specs.json
  def create
    @system_spec = SystemSpec.new()
    usw = Usagewatch
    @system_spec.ip_address = Facter.value(:ipaddress)
    @system_spec.macaddress = Facter.value(:macaddress)
    @system_spec.hostname = Facter.value(:hostname)
    @system_spec.username = Facter.value(:id)
    @system_spec.manufacturer = Facter.value(:manufacturer)
    @system_spec.operating_system = Sys::Uname.sysname
    @system_spec.os_family = Facter.value(:osfamily)
    @system_spec.distribution = Facter.value(:lsbdistdescription)
    @system_spec.distribution_codename = Facter.value(:lsbdistcodename)
    @system_spec.kernel  = Facter.value(:kernel)
    @system_spec.kernel_version = Facter.value(:kernelversion)
    @system_spec.total_memory = Facter.value(:memorysize)
    @system_spec.total_swap = Facter.value(:swapsize)
    @system_spec.total_storage = ((usw.uw_diskused+FreeDiskSpace.gigabytes('/')).truncate(2)).to_s+" GB"
    @system_spec.free_space = ((FreeDiskSpace.gigabytes('/')).truncate(2)).to_s+" GB"
    @system_spec.storage_used = (usw.uw_diskused.to_s+"GB")
    @system_spec.architecture = Facter.value(:architecture)
    @system_spec.cpu_architecture = Sys::Platform::ARCH
    @system_spec.processor_family = %x(sudo dmidecode -s processor-family)
    @system_spec.processor_manufacturer = %x(sudo dmidecode -s processor-manufacturer)
    @system_spec.processor_version = %x(sudo dmidecode -s processor-version)
    @system_spec.processor_core_count = Facter.value(:processorcount)
    @system_spec.processor_frequency = %x(sudo dmidecode -s processor-frequency)
    @system_spec.bios_vendor = %x(sudo dmidecode -s bios-vendor)
    @system_spec.bios_version = %x(sudo dmidecode -s bios-version)
    @system_spec.serial_number = %x(sudo dmidecode -s system-serial-number)
    @system_spec.product_name = %x(sudo dmidecode -s system-product-name)
    @system_spec.system_uuid = %x(sudo dmidecode -s system-uuid)

    respond_to do |format|
      if @system_spec.save
        format.html { redirect_to system_spec_url(@system_spec), notice: "System spec was successfully created." }
        format.json { render :show, status: :created, location: @system_spec }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @system_spec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /system_specs/1 or /system_specs/1.json
  def update
    respond_to do |format|
      if @system_spec.update(system_spec_params)
        format.html { redirect_to system_spec_url(@system_spec), notice: "System spec was successfully updated." }
        format.json { render :show, status: :ok, location: @system_spec }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @system_spec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /system_specs/1 or /system_specs/1.json
  def destroy
    @system_spec.destroy

    respond_to do |format|
      format.html { redirect_to system_specs_url, notice: "System spec was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_system_spec
      @system_spec = SystemSpec.find(params[:id])
    end
end
