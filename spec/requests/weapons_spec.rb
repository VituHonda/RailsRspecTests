require 'rails_helper'

RSpec.describe "Weapons", type: :request do

  # let(:weapon) {create(:weapon)}
  # let(:weapon_attributes) {attributes_for(:weapon)}

  describe 'index GET /weapons' do
    it 'checks if the name appears' do
      weapon = create(:weapon)
      put "/weapons/1"
      expect(response.body).to include(weapon.name)
    end
    # it 'checks if the current power appear'
    # it 'checks if the titles appear'
    # it 'check if the links appear'
  end

  # describe 'create POST /weapons' do
  #   it 'check if the weapon is created with the right parameters'
  #   it 'check if the weapon is not being created with the wrong parameters'
  # end
  #
  # describe 'delete DELETE /weapons/:id' do
  #   it 'check if the weapon is being deleted with the right id'
  # end
  #
  # describe 'show GET /weapons/:id' do
  #   it 'check if all weapon details are present'
  # end

end
