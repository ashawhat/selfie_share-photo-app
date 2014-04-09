class ArticlesController < ActionController::Base

  before_filter :authorize, only: [:edit, :update]

end
