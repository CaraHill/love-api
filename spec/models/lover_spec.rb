require 'rails_helper'

RSpec.describe Lover do
  before do
    @lover = Lover.new
  end

  describe 'Calculate' do
    it 'returns the response in json' do
      @lover.calculate("Jose", "Wilhemenia")
      expect(response.body).to be(json)
    end
  end
end
