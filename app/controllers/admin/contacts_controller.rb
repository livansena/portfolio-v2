class Admin::ContactsController < ApplicationController

  def index
    @contacts = Contact.all
  end

  def new
    redirect_to edit_admin_contact_path(Contact.first)
  end

  def create
    redirect_to admin_contacts_path
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])

    if @contact.update(contact_params)
      redirect_to admin_contacts_path,
                  notice: "Contact updated successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    redirect_to admin_contacts_path
  end

  private

  def contact_params
    params.require(:contact).permit(
      :tag,
      :title,
      :subtitle,
      :linkedin_url,
      :github_url,
      :resume_url,
      :status
    )
  end

end