# frozen_string_literal: true

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
    File.exist?(Rails.root.join("app/views/static_pages/#{params[:page]}.html.erb").to_s)
  end
end
