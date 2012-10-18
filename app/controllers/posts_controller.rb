class PostsController < InheritedResources::Base
  authorize_resource

  before_filter :assign_current_user, :only => [:new, :create]

  private
  def assign_current_user
    build_resource.user = current_user
  end
end
