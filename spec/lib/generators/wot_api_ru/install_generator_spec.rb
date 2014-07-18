require 'rails_helper'
require 'generator_spec'

describe WotApiRu::InstallGenerator do
  let(:wot_api_ru_gen) {WotApiRu::InstallGenerator.new}
  destination File.expand_path("../../tmp", __FILE__)

  before(:all) do
    prepare_destination
    run_generator
  end

  it 'creates a wot_api_ru initializer' do
    expect = %|# Set your application Wargaming key here!
WotApiRu::Settings[:application_id] = ENV['WOT_API_RU_APP_ID']|
    assert_file "config/initializers/wot_api_ru.rb", expect
  end

  it 'should have method name' do
    expect(wot_api_ru_gen).to respond_to(:name)
  end
end