require 'spec_helper'
require 'wot_api/constants'

describe 'Constants' do
  it { expect(WotApi::Constants::HOST).to eq 'https://api.worldoftanks.ru/wot/' }
end