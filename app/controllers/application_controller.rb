class ApplicationController < ActionController::Base
  before_action :set_paper_trail_whodunnit

  def render_flash
    render turbo_stream: turbo_stream.update("flash", partial: "shared/flash")
  end

  private

  def after_sign_out_path_for(resource_or_scope)
    request.referrer || root_path
  end

end
