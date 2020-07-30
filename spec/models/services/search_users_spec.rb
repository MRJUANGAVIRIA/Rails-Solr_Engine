require 'spec_helper'

RSpec.describe "Services::SearchUsers" do

  before(:all) do
    DatabaseCleaner.clean
    user_1 = User.create!(name: 'Juan David')
    user_2 = User.create!(name: 'Juan Antonio')

    User.solr_reindex
  end

  describe 'Search Services' do

    it 'Should not return any user' do
      subject = Services::SearchUsers.new({ name: "Brad" }).search
      expect(subject.count).to  eq(0)
    end

    it 'Should be return two user' do
      subject = Services::SearchUsers.new({ name: "jua" }).search
      expect(subject.count).to  eq(2)
    end
  end
end
