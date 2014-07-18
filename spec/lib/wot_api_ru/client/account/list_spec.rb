require 'rails_helper'

describe WotApiRu::Client do
  let(:client) { WotApiRu::Client.new }

  context 'account' do
    context 'list' do
      let(:params_right) { { search: 'saltovka' } }
      let(:params_wrong) { { search: 'ss' } }
      let(:client_right) { client.account_list(params_right) }
      let(:client_wrong) { client.account_list(params_wrong) }
      let(:client_without_params) { client.account_list() }

      context 'with rigth params' do
        it 'should be hash' do
          expect(client_right).to be_instance_of(Hash)
        end

        it 'should be status ok' do
          expect(client_right).to include('status' => 'ok')
        end

        it 'should have count' do
          expect(client_right).to have_key('count')
        end

        it 'should have data' do
          expect(client_right).to have_key('data')
        end

        it 'should be data is array' do
          expect(client_right['data']).to be_instance_of(Array)
        end
      end

      context 'with wrong params' do
        it 'should be hash' do
          expect(client_wrong).to be_instance_of(Hash)
        end

        it 'should be status error' do
          expect(client_wrong).to include('status' => 'error')
        end

        it 'should have error' do
          expect(client_wrong).to have_key('error')
        end

        context 'error' do
          let(:error) { client_wrong['error'] }

          it 'should be field is search' do
            expect(error).to include('field' => 'search')
          end

          it 'should be message is NOT_ENOUGH_SEARCH_LENGTH' do
            expect(error).to include('message' => 'NOT_ENOUGH_SEARCH_LENGTH')
          end

          it 'should be code 407' do
            expect(error).to include('code' => 407)
          end

          it 'should have value' do
            expect(error).to have_key('value')
          end
        end
      end

      context 'without params' do
        it 'should be hash' do
          expect(client_without_params).to be_instance_of(Hash)
        end

        it 'should be status error' do
          expect(client_without_params).to include('status' => 'error')
        end

        it 'should have error' do
          expect(client_without_params).to have_key('error')
        end

        context 'error' do
          let(:error) { client_without_params['error'] }

          it 'should be field is search' do
            expect(error).to include('field' => 'search')
          end

          it 'should be message is SEARCH_NOT_SPECIFIED' do
            expect(error).to include('message' => 'SEARCH_NOT_SPECIFIED')
          end

          it 'should be code 402' do
            expect(error).to include('code' => 402)
          end

          it 'should have value' do
            expect(error).to have_key('value')
          end
        end
      end
    end
  end
end
