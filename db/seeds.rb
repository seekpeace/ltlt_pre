# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# #
# # Examples:
# #
# #   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# #   Mayor.create(name: 'Emanuel', city: cities.first)


# User.destroy_all
# Home.destory_all
# Handler.destory_all
#
users_array = [
  {
    email: "seekpeace@gmail.com",
    name: "Enoch Ohshin",
    number: 2224445555,
    password: "ImDaFool",
    password_confirmation: "ImDaFool"
  },
  {
    email: "obama@whitehouse.gov",
    name: "Barack Hussein Obama II",
    number: 2223334444,
    password: "BetterThanBush",
    password_confirmation: "BetterThanBush"
  },
  {
    email: "marvin@mars.com",
    name: "Marvin the Martian",
    number: 1113334444,
    password: "DestroyEarth",
    password_confirmation: "DestroyEarth"
  }
]

handlers_array = [
  {
    agent_status: true,
    handler_name: "Elmo",
    handler_work: 6666664444,
    handler_fax:  3336664444,
    handler_email: "elmo@sesamestreet.org"
  },
  {
    agent_status: true,
    handler_name: "Cookie Monster",
    handler_work: 9999999999,
    handler_fax:  8888888888,
    handler_email: "cm@sesamestreet.org"
  },
  {
    agent_status: true,
    handler_name: "Kermit",
    handler_work: 1012023003,
    handler_fax:  3336664444,
    handler_email: "cool_green@sesamestreet.org"
  },
  {
    agent_status: false,
    handler_name: "John Smith",
    handler_work: 2023334444,
    handler_fax:  0,
    handler_email: "smith@unknown.com"
  }
]

User.destroy_all
Handler.destroy_all
Home.destroy_all

    # street_address: Faker::Address.street_address, #=> "282 Kevin Brook"
    # subdivision: Faker::Address.city

##HOME DATA
    # validates :street_address,
    #           :zip_code,
    #           :state,
    #           :price,
    #           :built,
    #           :buyer_commission, presence: true

##HANDLER DATA
    # validates :agent_status,
    #           :handler_name,
    #           :handler_work,
    #           :handler_email, presence: true

  # 5.times do
  #   current_home = Home.create!(
  #     street_address: Faker::Address.street_address, #=> "282 Kevin Brook"
  #     zip_code: 20007,
  #     state: "DC",
  #     price: Faker::Number.number(6),
  #     built: 1900 + Faker::Number.number(2).to_i,
  #     buyer_commission: 3,
  #     handler_id: current_handler["id"]
  #   )
  # end

# 10.times do
#   User.create!
#
# end

# have users place bids


#
# # HOMES SEED DATA
#
#

homes_array = [
  {
      street_address: "4510 Q PL NW",
      zip_code: 20007,
      state: "DC",
      subdivision: "Palisades",

      available: false,
      bid_status: true,
      success: false,
      price: 1049000,

      sqft: 0,
      bed: 4,
      bath: 3,
      half_bath: 1,
      built: 1949,
      days:12,
      buyer_commission:3,

      agent_status: true,
      handler_name: "Elmo",
      handler_work: 6666664444,
      handler_fax:  3336664444,
      handler_email: "elmo@sesamestreet.org"
  },
  {
      street_address: "1678 32ND ST NW",
      zip_code: 20007,
      state: "DC",
      subdivision: "Georgetown",

      available: true,
      bid_status: false,
      success: false,
      price: 1050000,

      sqft: 0,
      bed: 2,
      bath: 1,
      half_bath: 1,
      built: 1956,
      days:59,
      buyer_commission:3,

      agent_status: true,
      handler_name: "Cookie Monster",
      handler_work: 9999999999,
      handler_fax:  8888888888,
      handler_email: "cm@sesamestreet.org"
  },
  {
      street_address: "2721 POPLAR ST NW",
      zip_code: 20007,
      state: "DC",
      subdivision: "Georgetown",

      available: true,
      bid_status: false,
      success: false,
      price: 1050000,

      sqft: 1350,
      bed: 3,
      bath: 2,
      half_bath: 0,
      built: 1900,
      days:24,
      buyer_commission:3,

      agent_status: true,
      handler_name: "Kermit",
      handler_work: 1012023003,
      handler_fax:  3336664444,
      handler_email: "cool_green@sesamestreet.org"
  },
  {
      street_address: "2140 Wisconsin Ave NW #5",
      zip_code: 20007,
      state: "DC",
      subdivision: "Georgetown",

      available: true,
      bid_status: true,
      success: true,
      price: 1099000,

      sqft: 1400,
      bed: 2,
      bath: 2,
      half_bath: 1,
      built: 2014,
      days:89,
      buyer_commission:2.5,

      agent_status: false,
      handler_name: "John Smith",
      handler_work: 2023334444,
      handler_fax:  0,
      handler_email: "smith@unknown.com"
  },
  {
      street_address: "1812 35th St NW",
      zip_code: 20007,
      state: "DC",
      subdivision: "Burleith",

      available: true,
      bid_status: true,
      success: false,
      price: 1125000,

      sqft: 0,
      bed: 4,
      bath: 3,
      half_bath: 1,
      built: 1820,
      days:33,
      buyer_commission:3,

      agent_status: true,
      handler_name: "Geo",
      handler_work: 7773331234,
      handler_fax:  0,
      handler_email: "iamgod@umizoomi.com"
  },
  {
      street_address: "2617 Wisconsin Ave NW",
      zip_code: 20007,
      state: "DC",
      subdivision: "Observatory",

      available: true,
      bid_status: false,
      success: false,
      price: 1299000,

      sqft: 4950,
      bed: 5,
      bath: 6,
      half_bath: 1,
      built: 1935,
      days:31,
      buyer_commission:3,

      agent_status: true,
      handler_name: "Elmo",
      handler_work: 6666664444,
      handler_fax:  3336664444,
      handler_email: "elmo@sesamestreet.org"
  },
  {
      street_address: "1840 47th PL NW",
      zip_code: 20007,
      state: "DC",
      subdivision: "Berkley",

      available: true,
      bid_status: true,
      success: false,
      price: 1449000,

      sqft: 4300,
      bed: 6,
      bath: 4,
      half_bath: 1,
      built: 1940,
      days:203,
      buyer_commission:3,

      agent_status: true,
      handler_name: "Kermit",
      handler_work: 1012023003,
      handler_fax:  3336664444,
      handler_email: "cool_green@sesamestreet.org"
  }
]

users_array.each do |user|
  current_user = User.create!(user)
end


# create_table "handlers", force: :cascade do |t|
#   t.boolean "agent_status"
#   t.string  "handler_name"
#   t.integer "handler_work",  limit: 8
#   t.integer "handler_fax",   limit: 8
#   t.string  "handler_email"
# end

homes_array.each do |home|
    current_email = home[:handler_email]
    if !(Handler.exists?(handler_email: current_email))
        current_handler = Handler.create!(agent_status: home[:agent_status],
          handler_name: home[:handler_name],
          handler_work:  home[:handler_work],
          handler_fax:  home[:handler_fax],
          handler_email: home[:handler_email])
          index = Handler.last[:id]
    else
        index = Handler.where(handler_email: current_email).first[:id]
    end
    home[:handler_id] = index
    #this doesn't work home[handler: index] but why?##
    current_home = Home.create!(home.except(:agent_status, :handler_name, :handler_work, :handler_fax, :handler_email))
end

# 10.times do
#   rand_user_id = rand(User.count) + 1 # pk is 1 based
#   rand_home_id = rand(Home.count) + 1 # pk is 1 based
#   Bid.create!(user_id: rand_user_id, home_id: rand_home_id)
# end

10.times do
  rand_user_id = rand(User.count) + 1 # pk is 1 based
  rand_home_id = rand(Home.count) + 1 # pk is 1 based
  # rand_value = rand(1..10)
  Bid.create!(user_id: rand_user_id, home_id: rand_home_id, value: 987654)
end

#
# users.each do |user|
#     current_user = User.create!(user)
#
#
#     # email: "seekpeace@gmail.com",
#     # password: "DaFool",
#     # name: "Enoch OhShin",
#     # number: 2224445555
#
# # end =
#
#
# homes.each do |home|
#   current_user.homes.create!(home)
#
#   is_agent = home[:agent_status]
#   is_name = home[:handler_name]
#   is_work = home[:handler_work]
#   is_fax = home [:handler_fax]
#   is_email = home[:handler_email]
#
#   current_home.Handler.create!
#   (
#     agent_status: is_agent,
#     handler_name: is_name,
#     hanlder_work: is_work,
#     handler_fax: is_fax,
#     handler_email: is_email
#   )
# end
#
#
#
#
#
#
#
#
#
#
#
