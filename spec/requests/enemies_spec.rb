require 'rails_helper'

RSpec.describe "Enemies", type: :request do

  describe "PUT /enemies" do
    context 'when the enemy exists' do
      it 'return status code 200' do
        enemy = create(:enemy)
        enemy_attributes = attributes_for(:enemy)
        put "/enemies/#{enemy.id}", params: enemy_attributes
        expect(response).to have_http_status(200)
      end

      it 'updates the enemy' do
        enemy = create(:enemy)
        enemy_attributes = attributes_for(:enemy)

        put "/enemies/#{enemy.id}", params: enemy_attributes

        expect(enemy.reload).to have_attributes(enemy.attributes)
      end

      it 'returns the enemy updated' do
        enemy = create(:enemy)
        enemy_attributes = attributes_for(:enemy)
        put "/enemies/#{enemy.id}", params: enemy_attributes
        json_response = JSON.parse(response.body)
        expect(enemy.reload).to have_attributes(json_response.except('created_at', 'updated_at'))
      end
    end

    context 'when the enemy does not exist' do
      it 'returns status code 404' do
        put '/enemies/0', params: attributes_for(:enemy)
        expect(response).to have_http_status(404)
      end
      it 'returns a not found message' do
        put '/enemies/0', params: attributes_for(:enemy)
        # puts response.body
        expect(response.body).to match(/Couldn't find Enemy/)
      end
    end

  end

  # describe "GET /update" do
  #   it "returns http success" do
  #     get "/enemies/update"
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  #
  # describe "GET /destroy" do
  #   it "returns http success" do
  #     get "/enemies/destroy"
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
