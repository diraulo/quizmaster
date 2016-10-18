require 'rails_helper'

RSpec.describe Question, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :body }
    it { is_expected.to have_db_column :answer }
    it { is_expected.to belong_to :quiz }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :body }
    it { is_expected.to validate_presence_of :answer }
  end

  describe 'Factory' do
    it 'should have a valid Factory' do
      expect(FactoryGirl.create(:question)).to be_valid
    end
  end
end