class Admin::MedicsController < Admin::BaseController

  def index
    @medics = Medic.all
  end

  def show
    @medic = Medic.find(params[:id])
  end

  def new
    @medic = Medic.new
  end

  def edit
    @medic = Medic.find(params[:id])
  end

  def create
    @medic = Medic.new(params[:medic])

    if @medic.save
      redirect_to @medic, notice: 'Medic was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @medic = Medic.find(params[:id])

    respond_to do |format|
      if @medic.update_attributes(params[:medic])
        redirect_to @medic, notice: 'Medic was successfully updated.'
      else
        render action: "edit"
      end
    end
  end

  def destroy
    @medic = Medic.find(params[:id])
    @medic.destroy
  end

end
