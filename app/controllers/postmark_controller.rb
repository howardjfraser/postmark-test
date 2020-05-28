class PostmarkController < ApplicationController
  def show
    email = "howard@bindle.io"
    TmpMailer.tmp_mail(email).deliver_now
  end
end
