# frozen_string_literal: true

require 'rails_helper'

RSpec.describe '/pages' do
  # This should return the minimal set of attributes required to create a valid
  # Page. As you add validations to Page, be sure to adjust the attributes here as well.
  let(:valid_attributes) do
    attributes_for(:page)
  end

  let(:invalid_attributes) do
    { title: '' }
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Page.create! valid_attributes
      get pages_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      page = Page.create! valid_attributes
      get page_url(page)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with invalid parameters' do
      it 'does not create a new Page' do
        expect do
          post pages_url, params: { page: invalid_attributes }
        end.not_to change(Page, :count)
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested page' do
        page = Page.create! valid_attributes
        patch page_url(page), params: { page: new_attributes }
        page.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the page' do
        page = Page.create! valid_attributes
        patch page_url(page), params: { page: new_attributes }
        page.reload
        expect(response).to redirect_to(page_url(page))
      end
    end
  end
end
