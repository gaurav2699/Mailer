class UsersController < ApplicationController
before_action :authenticate_user!


  def index
    @users=User.all
  end


  def mail
    if(params[:user_ids] && !params[:user_ids].empty?)
    user_ids = params[:user_ids].map{ |k| k.to_i }

    i=0
    $emails = []

    all_emails = User.all.pluck(:id, :email)
      user_ids.each do |user_id|

      all_emails.each do|all_email|
        if all_email[0]==user_id
              $emails[i] = all_email[1]
              i=i+1
        end
      end
    end
  print $emails
else
  redirect_to index_path, notice: "No user selected"
end
     #NotifMailer.new_notif.deliver_now
    #redirect_to index_path
end


  def sendloc
    @location=params[:location].upcase
    $emails = []
    i=0
    all_emails = User.all.pluck(:location, :email)
    all_emails.each do|all_email|
      if all_email[0].upcase==@location
        $emails[i]=all_email[1]
        i=i+1
      end
    end
  end


  def sendall
    $emails = User.all.pluck(:email)
  end


  def sendmail
    p=params[:p]
    q=params[:q]
    puts(p)
    $emails.each do |email|
      puts email
      NotifMailer.new_notif(q,p,email).deliver_now
    end
    redirect_to index_path, notice: "Email sent"
  end
 end
