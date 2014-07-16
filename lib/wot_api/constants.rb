module WotApi
  module Constants

    HOST = 'https://api.worldoftanks.ru/wot/'

    PATH = {
        # All pathes require: application_id

        # require: search
        account_list: 'account/list/',
        # require: account_id
        account_info: 'account/info',
        # require: account_id
        account_tanks: 'account/tanks',
        # require: account_id
        account_achievements: 'account/achievements',

        # TODO uncomment when complete authentication
        # auth_login: 'auth/login',
        # require: access_token
        auth_prolongate: 'auth/prolongate',
        # require: access_token
        auth_logout: 'auth/logout',

        clan_list: 'clan/list',
        # require: clan_id
        clan_info: 'clan/info',
        # TODO method should be disable
        # require: clan_id
        clan_battles: 'clan/battles',
        clan_top: 'clan/top',
        # require: clan_id
        clan_provinces: 'clan/provinces',
        # TODO method should be disable
        # require: clan_id
        clan_victorypoints: 'clan/victorypoints',
        # TODO method should be disable
        # require: clan_id
        clan_victorypointshistory: 'clan/victorypointshistory',
        # require: member_id
        clan_membersinfo: 'clan/membersinfo',

        # require: map_id
        globalwar_clans: 'globalwar/clans',
        # require: map_id, account_id
        globalwar_famepoints: 'globalwar/famepoints',
        globalwar_maps: 'globalwar/maps',
        # require: map_id
        globalwar_provinces: 'globalwar/provinces',
        # require: map_id, order_by
        globalwar_top: 'globalwar/top',
        # require: map_id, province_id
        globalwar_tournaments: 'globalwar/tournaments',
        # require: map_id, access_token
        globalwar_famepointshistory: 'globalwar/famepointshistory',
        # require: map_id
        globalwar_alleyoffame: 'globalwar/alleyoffame',
        # require: map_id, clan_id
        globalwar_battles: 'globalwar/battles',
        # require: map_id, clan_id
        globalwar_victorypointshistory: 'globalwar/victorypointshistory',

        encyclopedia_tanks: 'encyclopedia/tanks',
        # require: tank_id
        encyclopedia_tankinfo: 'encyclopedia/tankinfo',
        encyclopedia_tankengines: 'encyclopedia/tankengines',
        encyclopedia_tankturrets: 'encyclopedia/tankturrets',
        encyclopedia_tankradios: 'encyclopedia/tankradios',
        encyclopedia_tankchassis: 'encyclopedia/tankchassis',
        encyclopedia_tankguns: 'encyclopedia/tankguns',
        encyclopedia_achievements: 'encyclopedia/achievements',
        encyclopedia_info: 'encyclopedia/info',

        ratings_types: 'ratings/types',
        # require: account_id, type
        ratings_accounts: 'ratings/accounts',
        # require: account_id, type, rank_field
        ratings_neighbors: 'ratings/neighbors',
        # require: type, rank_field
        ratings_top: 'ratings/top',
        # require: type
        ratings_dates: 'ratings/dates',

        # require: account_id
        tanks_stats: 'tanks/stats',
        # require: account_id
        tanks_achievements: 'tanks/achievements'
    }
  end
end