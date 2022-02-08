class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:success] = 'Ευχαριστούμε για την επικοινωνία'
      render :new
    else
      flash.now[:danger] = 'Αποτυχία, δοκιμάστε ξανά ή στείλτε μας mail στο rodakas.koinsep@gmail.com'
      render :new
    end
  end
end
