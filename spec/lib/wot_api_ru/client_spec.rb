require 'rails_helper'

describe WotApiRu::Client do
  let(:client) { WotApiRu::Client.new }

  it 'should have method_missing' do
    expect(client).to respond_to(:method_missing)
  end
end
