class Admin::PatientsController < Admin::BaseController

  before_filter :set_medic

  def index
    @patients = current_medics.patient.all
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def show

  end

  def destroy

  end

  private

    def set_medic
    end

end