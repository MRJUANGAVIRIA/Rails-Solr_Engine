require 'rails_helper'

RSpec.describe 'User' do
  context 'User validations' do

    it 'Name can´t be blank' do
      expect{ User.create!(name: nil) }.to raise_error(ActiveRecord::RecordInvalid, "Validation failed: Name can't be blank, Name is too short (minimum is 3 characters)")
    end

    it 'Name must be more than 3 character' do
      expect{ User.create!(name: 'Ju') }.to raise_error(ActiveRecord::RecordInvalid, "Validation failed: Name is too short (minimum is 3 characters)")
    end

    it 'Name is correct' do
      expect{ User.create!(name: 'Juan') }.to_not raise_error
    end

  end
end
