class SessionsController < ApplicationController

  def new
  end

  def create
    member = Member.find_by(email: params[:session][:email].downcase)
    if member && member.authenticate(params[:session][:password])
      # ユーザーログイン後にユーザー情報のページにリダイレクトする
    else
      # エラーメッセージを作成する
      flash[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
  end
end
