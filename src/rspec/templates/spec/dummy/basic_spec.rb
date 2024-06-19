# rubocop:disable all

require 'rails_helper'

RSpec.describe "Dummy" do
  describe "Basic spec", type: :job do
    it "asserts true is true" do
      expect(true).to be true
    end

    it "asserts false is false" do
      expect(false).to be false
    end
  end
end
