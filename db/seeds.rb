# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Global.delete_all
Global.create(current_season: 3, current_split: 2, current_week: 7)

ProTeam.delete_all
tsm = ProTeam.create(name: 'Team SoloMid Snapdragon', handle: 'TSM', image_url: 'tsm.jpg')
curse = ProTeam.create(name: 'Curse Gaming', handle: 'Crs', image_url: 'curse.png')
vulcun = ProTeam.create(name: 'Vulcun Techbargains', handle: 'V', image_url: 'vulcun.png')
coast = ProTeam.create(name: 'Team Coast', handle: 'CST', image_url: 'coast.jpg')
dignitas = ProTeam.create(name: 'Dignitas', handle: 'd', image_url: 'dig.png')
clg = ProTeam.create(name: 'Counter Logic Gaming', handle: 'CLG', image_url: 'clg.png')
cloud9 = ProTeam.create(name: 'Cloud 9 HyperX', handle: 'C9', image_url: 'cloud9.jpg')
velocity = ProTeam.create(name: 'Velocity e-Sports', handle: 'VES', image_url: 'velocity.png')
fnatic = ProTeam.create(name: 'Fnatic RaidCall', handle: 'FNC', image_url: 'fnatic.png')
gambit = ProTeam.create(name: 'Gambit Gaming', handle: 'GMB', image_url: 'gambit.png')
sk = ProTeam.create(name: 'SK Gaming', handle: 'SK', image_url: 'sk.png')
eg = ProTeam.create(name: 'Evil Geniuses RaidCall', handle: 'EG', image_url: 'eg.png')
nip = ProTeam.create(name: 'Ninjas in Pyjamas', handle: 'NiP', image_url: 'nip.png')
alternate = ProTeam.create(name: 'Alternate Attax', handle: 'ATN', image_url: 'alternate.png')
mym = ProTeam.create(name: 'MeetYourMakers', handle: 'MYM', image_url: 'mym.png')
lemondogs = ProTeam.create(name: 'LemonDogs', handle: 'LD', image_url: 'lemondogs.png')


Player.delete_all
dyrus = Player.create(name: 'Dyrus', position: 'top', pro_team: tsm, active: true)
theOddOne = Player.create(name: 'TheOddOne', position: 'jungle', pro_team: tsm, active: true)
reginaid = Player.create(name: 'ReginaId', position: 'mid', pro_team: tsm, active: true)
wildTurtle = Player.create(name: 'WildTurtle', position: 'ad carry', pro_team: tsm, active: true)
xpecial = Player.create(name: 'Xpecial', position: 'support', pro_team: tsm, active: true)
sychoSid = Player.create(name: 'Sycho Sid', position: 'top', pro_team: vulcun, active: true)
saintvicious = Player.create(name: 'saintvicious', position: 'jungle', pro_team: curse, active: true)
xPeke = Player.create(name: 'xPeke', position: 'mid', pro_team: fnatic, active: true)
candyPanda = Player.create(name: 'CandyPanda', position: 'ad carry', pro_team: sk, active: true)
balis = Player.create(name: 'BalIs', position: 'top', pro_team: cloud9, active: true)
meteos = Player.create(name: 'Meteos', position: 'jungle', pro_team: cloud9, active: true)
hai = Player.create(name: 'Hai', position: 'mid', pro_team: cloud9, active: true)
sneaky = Player.create(name: 'Sneaky', position: 'ad carry', pro_team: cloud9, active: true)
lemonNation = Player.create(name: 'LemonNation', position: 'support', pro_team: cloud9, active: true)
tabzz = Player.create(name: 'Tabzz', position: 'ad carry', pro_team: lemondogs, active: true)
darker = Player.create(name: 'Darker', position: 'support', pro_team: gambit, active: true)
crumbzz = Player.create(name: 'Crumbzz', position: 'jungle', pro_team: dignitas, active: true)
cop = Player.create(name: 'Cop', position: 'ad carry', pro_team: curse, active: true)
patoy = Player.create(name: 'Patoy', position: 'support', pro_team: dignitas, active: true)
araneae = Player.create(name: 'Araneae', position: 'jungle', pro_team: alternate, active: true)
yellowpete = Player.create(name: 'yellowpete', position: 'ad carry', pro_team: eg, active: true)
edWard = Player.create(name: 'EDward', position: 'support', pro_team: curse, active: true)

Game.delete_all
c9tsmw6 = Game.create(week: 6, split: 2, season: 3, duration: 25)

TeamScore.delete_all
c9Scorew6tsm = TeamScore.create(pro_team: cloud9, game: c9tsmw6)
tsmScorew6c9 = TeamScore.create(pro_team: tsm, game: c9tsmw6)

PlayerScore.delete_all
PlayerScore.create(team_score: c9Scorew6tsm, player: balis, kills: 5, deaths: 0, assists: 8, minions: 220)
PlayerScore.create(team_score: c9Scorew6tsm, player: meteos, kills: 6, deaths: 0, assists: 10, minions: 144)
PlayerScore.create(team_score: c9Scorew6tsm, player: hai, kills: 4, deaths: 2, assists: 7, minions: 183)
PlayerScore.create(team_score: c9Scorew6tsm, player: sneaky, kills: 4, deaths: 1, assists: 8, minions: 218)
PlayerScore.create(team_score: c9Scorew6tsm, player: lemonNation, kills: 1, deaths: 1, assists: 13, minions: 21)
PlayerScore.create(team_score: tsmScorew6c9, player: dyrus, kills: 0, deaths: 5, assists: 2, minions: 138)
PlayerScore.create(team_score: tsmScorew6c9, player: theOddOne, kills: 1, deaths: 5, assists: 2, minions: 98)
PlayerScore.create(team_score: tsmScorew6c9, player: reginaid, kills: 1, deaths: 3, assists: 2, minions: 130)
PlayerScore.create(team_score: tsmScorew6c9, player: wildTurtle, kills: 1, deaths: 2, assists: 2, minions: 156)
PlayerScore.create(team_score: tsmScorew6c9, player: xpecial, kills: 1, deaths: 5, assists: 2, minions: 30)

User.delete_all
user1 = User.create(name: 'Andy', password: 'password', email: 'andyk@slalom.com', admin: true)
user2 = User.create(name: 'Steve', password: 'password', email: 'steve@example.com', admin: false)
user3 = User.create(name: 'Rob', password: 'password', email: 'rob@example.com', admin: false)

League.delete_all
league = League.create(name: 'League 1', private: false, commissioner: user1, league_type: 'draft', kill_points: 3, death_points: -2, assist_points: 2, minion_kills_carry: 50, minion_kills_support: 30, game_normal: 20, max_teams: 10)

Team.delete_all
team1 = Team.create(name: 'Poro', handle: 'ANDY', owner: user1, league: league, starting_top: sychoSid, starting_jungle: saintvicious, starting_mid: xPeke, starting_ad_carry: candyPanda, starting_support: lemonNation, locked: false)
team2 = Team.create(name: 'Randy Newman', handle: 'STVE', owner: user2, league: league, starting_top: dyrus, starting_jungle: araneae, starting_mid: hai, starting_ad_carry: yellowpete, starting_support: edWard, locked: false)
team3 = Team.create(name: 'America', handle: 'ROB', owner: user3, league: league, starting_top: balis, starting_jungle: crumbzz, starting_mid: reginaid, starting_ad_carry: cop, starting_support: patoy, locked: false)

Match.delete_all
match1 = Match.create(league: league, season: 3, split: 2, week: 6)

FreeAgent.delete_all
freeAgentList = FreeAgent.create(league: league, players: [tabzz, darker])

WaiverClaim.delete_all
wc1 = WaiverClaim.create(player: tabzz, dropping_player: sneaky, team: team2)