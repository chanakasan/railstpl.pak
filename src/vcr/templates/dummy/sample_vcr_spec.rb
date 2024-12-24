require 'rails_helper'

RSpec.describe "Dummy" do
  describe "Sample VCR test", vcr: true do
    it 'records the response' do
      conn = create_conn('http://www.iana.org')
      VCR.use_cassette("synopsis") do
        response = conn.get('/domains/reserved')
        expect(response.body).to match(/Example domains/)
      end
    end
    
    def create_conn(base_url)
      conn = Faraday.new({
        url: base_url,
        ssl: {
          verify: false,
        },
        headers: {'Content-Type' => 'application/json'}
      })
    end
  end
end
