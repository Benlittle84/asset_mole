require 'rails_helper'

describe HomeController, type: :controller do
  let(:valid_session) { {} }

  describe 'GET index' do
    before { get :index }

    it 'renders index template' do
      expect(response).to render_template('index')
    end
  end
end
