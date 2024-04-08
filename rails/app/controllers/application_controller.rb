class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  include DeviseHackFakeSession # Session回避用の concerns
end
