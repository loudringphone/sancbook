# User.destroy_all
# u1 = User.create :username => 'Jones', :email => 'jonesy@ga.co', :password => 'chicken'
# u2 = User.create :username => 'Craig', :email => 'craigsy@ga.co', :password => 'chicken'
# puts "#{ User.count } users"


# Sanction.destroy_all
# filename = File.dirname(File.expand_path('..', __FILE__)) + '/data/srr4.txt'
# # filename = __dir__ + '/data/srr4.txt'
# srr4_arr = File.read(filename).split("\n\n")

# srr4_arr.each do |srr|
#     name = ''
#     nationality = ''
#     risk = ''
#     comma_index = srr.index(',') 
#     comma2_index = srr[comma_index + 2..].index(',') 
#     bracket_index = srr[comma_index + 2..].index('(')
#     unless ( srr[comma_index + 2..].include? 'a.k.a.' or srr[comma_index + 2..].include? 'f.k.a.')
#         name = srr[0..comma_index + comma2_index]
#     else
#         name = srr[0..comma_index + bracket_index]
#     end
#     nationality_index = srr.index('nationality') 
#     semicolon_index = srr[nationality_index+12..].index(';')
#     nationality = srr[nationality_index+12..semicolon_index +nationality_index+11 ].gsub("\n"," ")
#     # p srr[nationality_index+12..]
#     nationality = 'North Korea' if nationality == "Korea, North"
#     nationality = 'China' if nationality == "hina"
#     nationality = 'Turkey' if nationality == "urkey"
#     nationality = 'Palestine' if nationality == 'Palestinian'
    
#     risk_index = srr.index('Secondary sanctions risk:')
#     risk = srr[risk_index + 26..].gsub("\n"," ").gsub(' /',"").gsub('/',"")[..-2]

#     Sanction.create :name => name, :nationality => nationality, :risk => risk, :image => ''
# end

# puts "#{ Sanction.count } sanctions"

s1 = Sanction.create :name => 'CHO, Yong Chol', :nationality => 'North Korea', :risk => "North Korea Sanctions Regulations,
sections 510.201 and 510.210; Transactions Prohibited For Persons Owned or
Controlled By U.S. Financial Institutions: North Korea Sanctions Regulations
section 510.214; North Korea's Ministry of State Security Official (individual)
[DPRK2]", :image => ''
puts "#{ Sanction.count } sanctions"




# Country.destroy_all
# c1 = Country.create :name => "North Korea", :official_name => "Democratic People's Republic of Korea", :native_name => "조선민주주의인민공화국", :flag => "https://flagcdn.com/w320/kp.png"
# c2 = Country.create :name => "Russia", :official_name => "Russian Federation", :native_name => "Российская Федерация", :flag => "https://flagcdn.com/w320/ru.png"
# c3 = Country.create :name => "Hong Kong", :official_name => "Hong Kong Special Administrative Region of the People's Republic of China", :native_name => "中华人民共和国香港特别行政区", :flag => "https://flagcdn.com/w320/hk.png"

# puts "#{ Country.count } Countries"



countries = Country.all
sanctions = Sanction.all
dictators = Dictator.all