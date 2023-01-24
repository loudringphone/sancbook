User.destroy_all
u1 = User.create :username => 'Admin', :email => 'admin@sanction.com', :password => 'admin', :admin => true
u2 = User.create :username => 'JoeBiden', :email => 'joebiden@sanction.com', :password => 'joebiden'
u3 = User.create :username => 'AnthonyAlbanese', :email => 'anthonyalbanese@sanction.com', :password => 'anthonyalbanese'
u4 = User.create :username => 'XiJinping', :email => 'xijinping@sanction.com', :password => 'xijinping'
u5 = User.create :username => 'RishiSunak', :email => 'rishisunak@sanction.com', :password => 'rishisunak'
u6 = User.create :username => 'Craig', :email => 'craigsy@ga.co', :password => 'chicken'
puts "#{ User.count } users"


Dictator.destroy_all
Dictator.create :name => 'Kim Jong-un', :title => 'Supreme Leader', :nationality => 'North Koera', :dob => '1982-01-08', :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Kim_Jong-un_April_2019_%28cropped%29.jpg/800px-Kim_Jong-un_April_2019_%28cropped%29.jpg'
puts "#{ Dictator.count } dictators"

Sanction.destroy_all
filename = File.dirname(File.expand_path('..', __FILE__)) + '/data/srr4.txt'
# filename = __dir__ + '/data/srr4.txt'
srr4_arr = File.read(filename).split("\n\n")

srr4_arr.each do |srr|
    name = ''
    nationality = ''
    risk = ''
    comma_index = srr.index(',') 
    comma2_index = srr[comma_index + 2..].index(',') 
    bracket_index = srr[comma_index + 2..].index('(')
    unless ( srr[comma_index + 2..].include? 'a.k.a.' or srr[comma_index + 2..].include? 'f.k.a.')
        name = srr[0..comma_index + comma2_index]
    else
        name = srr[0..comma_index + bracket_index]
    end
    nationality_index = srr.index('nationality') 
    semicolon_index = srr[nationality_index+12..].index(';')
    nationality = srr[nationality_index+12..semicolon_index +nationality_index+11 ].gsub("\n"," ")
    # p srr[nationality_index+12..]
    nationality = 'North Korea' if nationality == "Korea, North"
    nationality = 'China' if nationality == "hina"
    nationality = 'Turkey' if nationality == "urkey"
    nationality = 'Palestine' if nationality == 'Palestinian'
    
    risk_index = srr.index('Secondary sanctions risk:')
    semicolon_index = srr[risk_index ..].index(';')
    unless semicolon_index.nil?
    risk = srr[risk_index + 26.. risk_index + semicolon_index-1].gsub("\n"," ").gsub(' /',"").gsub('/',"")
    else
        risk = srr[risk_index + 26..-2].gsub("\n"," ").gsub(' /',"").gsub('/',"")
    end

    risk = "section 1(b) of Executive Order 13224, as amended by Executive Order 13886" if risk.include? "13224, as amended by Executive Order 13886"
    risk = "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209" if risk.include? "31 CFR 589.201 andor 589.209"
    risk = "pursuant to the Hong Kong Autonomy Act of 2020 - Public Law 116-149" if risk.include? "2020 - Public Law 116-149"



    s = Sanction.create :name => name, :nationality => nationality, :risk => risk, :image => ''
    u2.sanctions << s
end

puts "#{ Sanction.count } sanctions"



# Country.destroy_all
# c1 = Country.create :name => "North Korea", :official_name => "Democratic People's Republic of Korea", :native_name => "조선민주주의인민공화국", :flag => "https://flagcdn.com/w320/kp.png"
# c2 = Country.create :name => "Russia", :official_name => "Russian Federation", :native_name => "Российская Федерация", :flag => "https://flagcdn.com/w320/ru.png"
# c3 = Country.create :name => "Hong Kong", :official_name => "Hong Kong Special Administrative Region of the People's Republic of China", :native_name => "中华人民共和国香港特别行政区", :flag => "https://flagcdn.com/w320/hk.png"

# puts "#{ Country.count } Countries"



countries = Country.all
sanctions = Sanction.all
dictators = Dictator.all