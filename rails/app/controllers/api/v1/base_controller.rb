class Api::V1::BaseController < ApplicationController
  # 以下のメソッドを/controllersディレクトリ直下での振る舞いのように使えるようにする
  alias_method :current_user, :current_api_v1_user
  alias_method :authenticate_user!, :authenticate_api_v1_user!
  alias_method :user_signed_in?, :api_v1_user_signed_in?
end
