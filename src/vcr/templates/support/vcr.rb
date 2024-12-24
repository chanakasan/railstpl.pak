VCR.configure do |config|
  config.cassette_library_dir = "spec/fixtures/vcr"
  config.hook_into :faraday
end

RSpec.configure do |config|
  config.around do |example|
    # Just disable the VCR, the configuration for its usage
    # will be done in a shared_context
    if example.metadata[:vcr]
      example.run
    else
      VCR.turned_off { example.run }
    end
  end
end

shared_context 'with vcr', vcr: true do
  around do |example|
    VCR.turn_on!

    VCR.use_cassette(cassette_name) do
      example.run
    end

    VCR.turn_off!
  end
end
