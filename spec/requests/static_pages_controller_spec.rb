# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'StaticPagesControllers' do
  describe 'GET /:page' do
    context 'when page exists' do
      before do
        # rubocop:disable RSpec/AnyInstance
        allow_any_instance_of(StaticPagesController).to receive(:page_exists?).and_return(true)
        # rubocop:enable RSpec/AnyInstance
      end

      it 'responds with 200' do
        get '/home'
        expect(response).to have_http_status(:ok)
      end
    end

    context 'when page does not exist' do
      before do
        # rubocop:disable RSpec/AnyInstance
        allow_any_instance_of(StaticPagesController).to receive(:page_exists?).and_return(false)
        # rubocop:enable RSpec/AnyInstance
      end

      it 'responds with 404' do
        get '/nonexistent-page'
        expect(response).to have_http_status(:not_found)
      end
    end
  end
end
