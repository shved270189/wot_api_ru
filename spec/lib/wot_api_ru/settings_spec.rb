require 'rails_helper'

describe WotApiRu::Settings do
  it { expect(WotApiRu::Settings.respond_to?('[]')).to eq true }
  it { expect(WotApiRu::Settings.respond_to?('[]=')).to eq true }
  context '[]=' do
    before(:all) { WotApiRu::Settings['id'] = 5 }

    it { expect(WotApiRu::Settings[:id]).to eq '5' }
    it { expect(WotApiRu::Settings[:id]).not_to eq 5 }
    it { expect(WotApiRu::Settings['id']).to eq WotApiRu::Settings[:id] }
  end
end