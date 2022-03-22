class AdminsBackoffice::AdminsController < AdminsBackofficeController
  def index
    @admins = Admin.all.order(:id)
  end

  def edit
    @admin = Admin.find(params[:id])
  end

  def update
    admin = Admin.find(params[:id])
    params_admin = params.require(:admin).permit(:email, :password, :password_connfirmation)
    if admin.update(params_admin)
      redirect_to admins_backoffice_admins_path, notice: "Adm atualizado com Sucesso"
    else
      render :edit
    end
  end

  def show
    
  end

end