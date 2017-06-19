# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
campaign1 = Campaign.create name: 'Interplanetary Cruise', status: 'PAUSED', budget: 3000, advertising_channel_type: 'SEARCH'
campaign2 = Campaign.create name: 'Police Station', status: 'ON', budget: 2000, advertising_channel_type: 'DISPLAY'
adgroup1 = AdGroup.create name: 'Facebook Ads - Napice', status: 'ENABLED', campaign: campaign1
adgroup2 = AdGroup.create name: 'Google Ads - Napice', status: 'ENABLED', campaign: campaign1
adgroup3 = AdGroup.create name: 'Yahoo Ads - Spotify', status: 'ENABLED', campaign: campaign2
ExpandedTextAd.create xsi_type: 'ExpandedTextAd',
                      ad_group: adgroup1,
                      headline_part1: 'Developers from Mars',
                      headline_part2: '',
                      description: 'Buy your tickets now!',
                      path1: 'all-inclusive',
                      path2: 'deals'
ExpandedTextAd.create xsi_type: 'ExpandedTextAd',
                      ad_group: adgroup2,
                      headline_part1: 'We are looking for the best designers',
                      headline_part2: 'Best in the galaxy',
                      description: 'We are a team of product builders and are looking for designers',
                      path1: 'all-inclusive',
                      path2: 'deals'