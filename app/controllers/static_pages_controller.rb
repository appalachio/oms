# frozen_string_literal: true

# Static pages are not backed by a database model, but are a file in the app/views/static_pages/ directory.
class StaticPagesController < ApplicationController
  def show
    if page_exists?
      render "static_pages/#{params[:page]}"
    else
      render file: 'public/404.html', status: :not_found
    end
  end

  private

  def page_exists?
    File.exist?(File.expand_path(File.join(Rails.root, 'app', 'views', 'static_pages', "#{params[:page]}.html.erb")))
  end
end
