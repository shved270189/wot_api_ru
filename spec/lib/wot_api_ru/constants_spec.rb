require 'rails_helper'

describe WotApiRu::Constants do
  it { expect(WotApiRu::Constants::HOST).to eq 'https://api.worldoftanks.ru/wot/' }

  context 'PATH' do
    it { expect(WotApiRu::Constants::PATH[:account_list]).to eq 'account/list/' }
    it { expect(WotApiRu::Constants::PATH[:account_info]).to eq 'account/info' }
    it { expect(WotApiRu::Constants::PATH[:account_tanks]).to eq 'account/tanks' }
    it { expect(WotApiRu::Constants::PATH[:account_achievements]).to eq 'account/achievements' }
    it { expect(WotApiRu::Constants::PATH[:auth_prolongate]).to eq 'auth/prolongate' }
    it { expect(WotApiRu::Constants::PATH[:auth_logout]).to eq 'auth/logout' }
    it { expect(WotApiRu::Constants::PATH[:clan_list]).to eq 'clan/list' }
    it { expect(WotApiRu::Constants::PATH[:clan_info]).to eq 'clan/info' }
    it { expect(WotApiRu::Constants::PATH[:clan_battles]).to eq 'clan/battles' }
    it { expect(WotApiRu::Constants::PATH[:clan_top]).to eq 'clan/top' }
    it { expect(WotApiRu::Constants::PATH[:clan_provinces]).to eq 'clan/provinces' }
    it { expect(WotApiRu::Constants::PATH[:clan_victorypoints]).to eq 'clan/victorypoints' }
    it { expect(WotApiRu::Constants::PATH[:clan_victorypointshistory]).to eq 'clan/victorypointshistory' }
    it { expect(WotApiRu::Constants::PATH[:clan_membersinfo]).to eq 'clan/membersinfo' }
    it { expect(WotApiRu::Constants::PATH[:globalwar_clans]).to eq 'globalwar/clans' }
    it { expect(WotApiRu::Constants::PATH[:globalwar_famepoints]).to eq 'globalwar/famepoints' }
    it { expect(WotApiRu::Constants::PATH[:globalwar_maps]).to eq 'globalwar/maps' }
    it { expect(WotApiRu::Constants::PATH[:globalwar_provinces]).to eq 'globalwar/provinces' }
    it { expect(WotApiRu::Constants::PATH[:globalwar_top]).to eq 'globalwar/top' }
    it { expect(WotApiRu::Constants::PATH[:globalwar_tournaments]).to eq 'globalwar/tournaments' }
    it { expect(WotApiRu::Constants::PATH[:globalwar_famepointshistory]).to eq 'globalwar/famepointshistory' }
    it { expect(WotApiRu::Constants::PATH[:globalwar_alleyoffame]).to eq 'globalwar/alleyoffame' }
    it { expect(WotApiRu::Constants::PATH[:globalwar_battles]).to eq 'globalwar/battles' }
    it { expect(WotApiRu::Constants::PATH[:globalwar_victorypointshistory]).to eq 'globalwar/victorypointshistory' }
    it { expect(WotApiRu::Constants::PATH[:encyclopedia_tanks]).to eq 'encyclopedia/tanks' }
    it { expect(WotApiRu::Constants::PATH[:encyclopedia_tankinfo]).to eq 'encyclopedia/tankinfo' }
    it { expect(WotApiRu::Constants::PATH[:encyclopedia_tankengines]).to eq 'encyclopedia/tankengines' }
    it { expect(WotApiRu::Constants::PATH[:encyclopedia_tankturrets]).to eq 'encyclopedia/tankturrets' }
    it { expect(WotApiRu::Constants::PATH[:encyclopedia_tankradios]).to eq 'encyclopedia/tankradios' }
    it { expect(WotApiRu::Constants::PATH[:encyclopedia_tankchassis]).to eq 'encyclopedia/tankchassis' }
    it { expect(WotApiRu::Constants::PATH[:encyclopedia_tankguns]).to eq 'encyclopedia/tankguns' }
    it { expect(WotApiRu::Constants::PATH[:encyclopedia_achievements]).to eq 'encyclopedia/achievements' }
    it { expect(WotApiRu::Constants::PATH[:encyclopedia_info]).to eq 'encyclopedia/info' }
    it { expect(WotApiRu::Constants::PATH[:ratings_types]).to eq 'ratings/types' }
    it { expect(WotApiRu::Constants::PATH[:ratings_accounts]).to eq 'ratings/accounts' }
    it { expect(WotApiRu::Constants::PATH[:ratings_neighbors]).to eq 'ratings/neighbors' }
    it { expect(WotApiRu::Constants::PATH[:ratings_top]).to eq 'ratings/top' }
    it { expect(WotApiRu::Constants::PATH[:ratings_dates]).to eq 'ratings/dates' }
    it { expect(WotApiRu::Constants::PATH[:tanks_stats]).to eq 'tanks/stats' }
    it { expect(WotApiRu::Constants::PATH[:tanks_achievements]).to eq 'tanks/achievements' }
  end
end