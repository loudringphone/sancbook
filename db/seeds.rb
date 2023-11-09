User.destroy_all
u1 = User.create :username => 'Admin', :email => 'admin@sanction.com', :password => 'adHrwVx7BTH2', :admin => true
u2 = User.create :username => 'JoeBiden', :email => 'joebiden@sanction.com', :password => 'adHrwVx7BTH2'
u3 = User.create :username => 'AnthonyAlbanese', :email => 'anthonyalbanese@sanction.com', :password => 'anthonyalbanese'
u4 = User.create :username => 'XiJinping', :email => 'xijinping@sanction.com', :password => 'adHrwVx7BTH2'
u5 = User.create :username => 'RishiSunak', :email => 'rishisunak@sanction.com', :password => 'adHrwVx7BTH2'
u6 = User.create :username => 'Craig', :email => 'craigsy@ga.co', :password => 'chicken'
puts "#{ User.count } users"


# Dictator.destroy_all
# Dictator.create :name => 'Kim Jong-un', :title => 'Supreme Leader', :nationality => 'North Koera', :dob => '1982-01-08', :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Kim_Jong-un_April_2019_%28cropped%29.jpg/800px-Kim_Jong-un_April_2019_%28cropped%29.jpg'
# puts "#{ Dictator.count } dictators"

# Sanction.destroy_all
# # filename = File.dirname(File.expand_path('..', __FILE__)) + '/data/srr4.txt'
# # # filename = __dir__ + '/data/srr4.txt'
# # srr4_arr = File.read(filename).split("\n\n")

# # srr4_arr.each do |srr|
# #     name = ''
# #     nationality = ''
# #     risk = ''
# #     comma_index = srr.index(',') 
# #     comma2_index = srr[comma_index + 2..].index(',') 
# #     bracket_index = srr[comma_index + 2..].index('(')
# #     unless ( srr[comma_index + 2..].include? 'a.k.a.' or srr[comma_index + 2..].include? 'f.k.a.')
# #         name = srr[0..comma_index + comma2_index]
# #     else
# #         name = srr[0..comma_index + bracket_index]
# #     end
# #     nationality_index = srr.index('nationality') 
# #     semicolon_index = srr[nationality_index+12..].index(';')
# #     nationality = srr[nationality_index+12..semicolon_index +nationality_index+11 ].gsub("\n"," ")
# #     # p srr[nationality_index+12..]
# #     nationality = 'North Korea' if nationality == "Korea, North"
# #     nationality = 'China' if nationality == "hina"
# #     nationality = 'Turkey' if nationality == "urkey"
# #     nationality = 'Palestine' if nationality == 'Palestinian'
    
# #     risk_index = srr.index('Secondary sanctions risk:')
# #     semicolon_index = srr[risk_index ..].index(';')
# #     unless semicolon_index.nil?
# #     risk = srr[risk_index + 26.. risk_index + semicolon_index-1].gsub("\n"," ").gsub(' /',"").gsub('/',"")
# #     else
# #         risk = srr[risk_index + 26..-2].gsub("\n"," ").gsub(' /',"").gsub('/',"")
# #     end

# #     risk = "section 1(b) of Executive Order 13224, as amended by Executive Order 13886" if risk.include? "13224, as amended by Executive Order 13886"
# #     risk = "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209" if risk.include? "31 CFR 589.201 andor 589.209"
# #     risk = "pursuant to the Hong Kong Autonomy Act of 2020 - Public Law 116-149" if risk.include? "2020 - Public Law 116-149"



# #     s = Sanction.create :name => name, :nationality => nationality, :risk => risk, :image => ''
# #     u2.sanctions << s
# # end

# s1 = Sanction.create :name => "BHARGAVA, Anurima", :nationality => "United States", :risk => "Interfering in issues related to Xinjiang and China's internal affairs", :image => ''
# s2 = Sanction.create :name => "CARR, James W.", :nationality => "United States", :risk => "Interfering in issues related to Xinjiang and China's internal affairs", :image => ''
# s3 = Sanction.create :name => "MAENZA, Nadine", :nationality => "United States", :risk => "Interfering in issues related to Xinjiang and China's internal affairs", :image => ''
# s4 = Sanction.create :name => "RUBIO, Marco", :nationality => "United States", :risk => "Interfering in issues related to Xinjiang and China's internal affairs", :image => ''
# s5 = Sanction.create :name => "TURKEL, Nury", :nationality => "United States", :risk => "Interfering in issues related to Xinjiang and China's internal affairs", :image => ''

# u4.sanctions << s1
# u4.sanctions << s2
# u4.sanctions << s3
# u4.sanctions << s4
# u4.sanctions << s5





# puts "#{ Sanction.count } sanctions"



# Country.destroy_all
# c1 = Country.create :name => "North Korea", :official_name => "Democratic People's Republic of Korea", :native_name => "조선민주주의인민공화국", :flag => "https://flagcdn.com/w320/kp.png"
# c2 = Country.create :name => "Russia", :official_name => "Russian Federation", :native_name => "Российская Федерация", :flag => "https://flagcdn.com/w320/ru.png"
# c3 = Country.create :name => "Hong Kong", :official_name => "Hong Kong Special Administrative Region of the People's Republic of China", :native_name => "中华人民共和国香港特别行政区", :flag => "https://flagcdn.com/w320/hk.png"

# puts "#{ Country.count } Countries"



# countries = Country.all
# sanctions = Sanction.all
# dictators = Dictator.all





Sanction.destroy_all

s = Sanction.create :name => "ANTONOV, Boris Alekseyevic", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [CAATSA - RUSSIA] (Linked To: MAIN INTELLIGENCE DIRECTORATE)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "BOBKOV, Sergei Alekseevich", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201", :image => ''

u2.sanctions << s

s = Sanction.create :name => "BOSHIROV, Ruslan", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CAATSA - RUSSIA] (Linked To: MAIN INTELLIGENCE DIRECTORATE)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "DOROKHOVA, Nina Viktorovn", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CYBER2] [CAATSA - RUSSIA] (Linked To: INFOROS, OOO)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ILYASHENKO, Andrey Vitalyevic", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CYBER2] [CAATSA - RUSSIA] (Linked To: INFOROS, OOO)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KAMYSHANOVA, Aleksandra Aleksandrovn", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CYBER2] [CAATSA - RUSSIA] (Linked To: INFOROS, OOO)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KIRILLOVA, Anastasiya Sergeyevn", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CYBER2] [CAATSA - RUSSIA] (Linked To: INFOROS, OOO)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KNYRIK, Konstantin Sergeyevic", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KOROBOV, Igor", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KOVALEV, Anatoliy Sergeyevic", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [CAATSA - RUSSIA] (Linked To: MAIN INTELLIGENCE DIRECTORATE)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KOZACHEK, Nikolay Yuryevic", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [CAATSA - RUSSIA] (Linked To: MAIN INTELLIGENCE DIRECTORATE)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KRANS, Maksim Iosifovic", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CYBER2] [CAATSA - RUSSIA] (Linked To: INFOROS, OOO)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KRASOVSKIY, Maksim Borisovic", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201", :image => ''

u2.sanctions << s

s = Sanction.create :name => "LUKASHEV, Aleksey Viktorovic", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [CAATSA - RUSSIA] (Linked To: MAIN INTELLIGENCE DIRECTORATE)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "MALEVANYY, Konstantin Vasilyevic", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR589.201", :image => ''

u2.sanctions << s

s = Sanction.create :name => "MALYSHEV, Artem Andreyevic", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [CAATSA - RUSSIA] (Linked To: MAIN INTELLIGENCE DIRECTORATE)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "MININ, Alexey Valerevic", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201", :image => ''

u2.sanctions << s

s = Sanction.create :name => "MISHKIN, Alexander Yevgeniyevich", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CAATSA - RUSSIA] (Linked To: MAIN INTELLIGENCE DIRECTORATE)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "MORENETS, Aleksei Sergeyevic", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201", :image => ''

u2.sanctions << s

s = Sanction.create :name => "NETYKSHO, Viktor Borisovic", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [CAATSA - RUSSIA] (Linked To: MAIN INTELLIGENCE DIRECTORATE)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "NEZHDANOVA, Yevgeniya Vitalyevn", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CYBER2] [CAATSA - RUSSIA] (Linked To: INFOROS, OOO)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "OSADCHUK, Aleksandr Vladimirovic", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [CAATSA - RUSSIA] (Linked To: MAIN INTELLIGENCE DIRECTORATE)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "PETROV, Alexander", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CAATSA - RUSSIA] (Linked To: MAIN INTELLIGENCE DIRECTORATE)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "POGREBENKOV, Valeriy Ivanovic", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CYBER2] [CAATSA - RUSSIA] (Linked To: INFOROS, OOO)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "POTEMKIN, Aleksey Aleksandrovic", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [CAATSA - RUSSIA] (Linked To: MAIN INTELLIGENCE DIRECTORATE)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "SEREBRIAKOV, Evgenii Mikhaylovic", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201", :image => ''

u2.sanctions << s

s = Sanction.create :name => "SOTNIKOV, Oleg Mikhaylovic", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201", :image => ''

u2.sanctions << s

s = Sanction.create :name => "TATARCHENKO, Denis Sergeyevich", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CYBER2] [CAATSA - RUSSIA] (Linked To: INFOROS, OOO)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "TYURIN, Denis Valeriyevic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CYBER2] [CAATSA - RUSSIA] (Linked To: MAIN INTELLIGENCE DIRECTORATE)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "YERMAKOV, Ivan Sergeyevic", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [CAATSA - RUSSIA] (Linked To: MAIN INTELLIGENCE DIRECTORATE)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "AHMED, Shahzad", :nationality => "Pakistan", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201", :image => ''

u2.sanctions << s

s = Sanction.create :name => "AMIRI, Mohsin Raza", :nationality => "Pakistan", :risk => "kraine-Russia-Related Sanctions Regulations, 31 CFR 589.201", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ANDREYEV, Anton Nikolaeyvic", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ASLANOV, Dzheykhun Nasimi Ogly", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations,31 CFR 589.201", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ASLANOVA, Darya Dmitriyevna", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201", :image => ''

u2.sanctions << s

s = Sanction.create :name => "BELAN, Alexsei", :nationality => "Latvia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201", :image => ''

u2.sanctions << s

s = Sanction.create :name => "CHUGULEVA, Aleyona Anatolyevn", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CYBER2] [ELECTION-EO13848] (Linked To: SOUTHFRONT)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "DOROKHOVA, Nina Viktorovn", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CYBER2] [CAATSA - RUSSIA] (Linked To: INFOROS, OOO)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "DUGINA, Darya Aleksandrovn", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "FEDIN, Yuriy Sergeyevic", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CYBER2] (Linked To: NEWSFRONT)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "GAFNER, Denis Yakovlevic", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201", :image => ''

u2.sanctions << s

s = Sanction.create :name => "GLOTOV, Yevgeniy Eduardovic", :nationality => "Ukraine", :risk => "Ukraine-Russia-Related SanctionsRegulations, 31 CFR 589.201", :image => ''

u2.sanctions << s

s = Sanction.create :name => "HASNAIN, Syed Joha", :nationality => "Pakistan", :risk => "Ukraine-Russia-Related SanctionsRegulations, 31 CFR 589.201", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ILYASHENKO, Andrey Vitalyevic", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CYBER2] [CAATSA - RUSSIA] (Linked To: INFOROS, OOO)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KALABAYEVA, Valeriy", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KAMYSHANOVA, Aleksandra Aleksandrovn", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CYBER2] [CAATSA - RUSSIA] (Linked To: INFOROS, OOO)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KIRILLOVA, Anastasiya Sergeyevn", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CYBER2] [CAATSA - RUSSIA] (Linked To: INFOROS, OOO)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KNYRIK, Konstantin Sergeyevic", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KOVALEVSKIJ, Nikita Gennadievitch", :nationality => "Finland", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KRANS, Maksim Iosifovic", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CYBER2] [CAATSA - RUSSIA] (Linked To: INFOROS, OOO)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KUCHUMOVA, Nadezhda Leonidovna", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations,31 CFR 589.201", :image => ''

u2.sanctions << s

s = Sanction.create :name => "LAVRENKOV, Igor Valerievic", :nationality => "Saint Kitts and Nevis", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "LI, Jiadong", :nationality => "China", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "MAMAKOVA, Aelita Leonidovn", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CYBER2] [ELECTION-EO13848] (Linked To: SOUTHFRONT)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "NEZHDANOVA, Yevgeniya Vitalyevn", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CYBER2] [CAATSA - RUSSIA] (Linked To: INFOROS, OOO)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "POGREBENKOV, Valeriy Ivanovic", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CYBER2] [CAATSA - RUSSIA] (Linked To: INFOROS, OOO)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "POLIANIN, Evegnii Igorevich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201", :image => ''

u2.sanctions << s

s = Sanction.create :name => "POTEPKIN, Mikhail Sergeyevic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "PRIBYSHIN, Taras Kirillovic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "RAZA ZAIDI, Syed Ali", :nationality => "Pakistan", :risk => "kraine-Russia-Related Sanctions Regulations, 31 CFR 589.201", :image => ''

u2.sanctions << s

s = Sanction.create :name => "SHCHERBAKOV, Kirill Konstantinovic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "SINELIN, Mihail Anatol'evich", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201", :image => ''

u2.sanctions << s

s = Sanction.create :name => "SLOBODSKOY, Kirill Alekseyevic", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201", :image => ''

u2.sanctions << s

s = Sanction.create :name => "STEPANOV, Artem Nikolaevic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "TIAN, Yinyin", :nationality => "China", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "TSAREVA, Marina Igorevn", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201", :image => ''

u2.sanctions << s

s = Sanction.create :name => "TYURIN, Denis Valeriyevic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CYBER2] [CAATSA - RUSSIA] (Linked To: MAIN INTELLIGENCE DIRECTORATE)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "CULHA, Erhan; DOB 17 Oct 1954; POB Istanbu", :nationality => "Turkey", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "SAHIN, Huseyi", :nationality => "Turkey", :risk => "North Korea SanctionsRegulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "CHASOVNIKOV, Aleksandr Aleksandrovic", :nationality => "Russia", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "CHO, Ch'o'l", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "CHO, Yong Chol", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "CH'OE, So'k-mi", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "CHON, Il Ho", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "GAYEVOY, Aleksandr Andreyevich", :nationality => "Russia", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "HWANG, Kyong Nam", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "JO, Kyong-Chol", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "JONG, Man Bok", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "JONG, Yong S", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KIM, Ho Gyu", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KIM, Kyong Hak", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KIM, Ky", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KIM, Min Cho", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KIM, Song", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KIM, Su Gil", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KIM, Yong Su", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KU, Seung Sub", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "PAK, Gwang Hun", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "PAK, Tong Sok", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "RI, Song U", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "RI, Thae Chol", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "RI, Tok Jin", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "RI, Yong Gi", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "RYANG, Tae Chol", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "RYU, Ji", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "SHIN, Yong Il", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "YOO, Jin", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "YU, Chin", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "YU, Jin", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "CHI, Yupen", :nationality => "China", :risk => "North Korea Sanctions Regulations,sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "CHOE, Chun Yong", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "JADHAV, Deepak", :nationality => "India", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KIM, Mun Chol", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KIM, Mun-ch'o'l", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KIM, Tong-h", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "LI, Hong Ri", :nationality => "China", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "LI, Hongri", :nationality => "China", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "LU, Hezhen", :nationality => "China", :risk => "North Korea Sanctions Regulations,sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "RI, Hong-il", :nationality => "China", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "RI, So", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "SOIN, Dmitriy Yurevich", :nationality => "Russia", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "YAN, Zhiyon", :nationality => "China", :risk => "North Korea Sanctions Regulations,sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "CHA, Sung Jun", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "CHEN, Mei Hsiang", :nationality => "Taiwan", :risk => "North Korea SanctionsRegulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "CHEN, Shih Hua", :nationality => "Taiwan", :risk => "North Korea SanctionsRegulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "CHU, Hyo'k", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "JONG, Song Hwa; DOB 05 Feb 1970; nationality Kore", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KANG, Mi", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KIM, Cho'ng-man", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KO, Il Hwan", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KWAK, Chong-chol", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "MUN, Kyong Hwan", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "PAE, Won Uk", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "PAEK, Chong-sam", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "PAK, Chol Nam", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "PAK, Mun Il", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "RI, Ho Nam", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "RYOM, Hui-bong", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "CHUGULEVA, Aleyona Anatolyevn", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CYBER2] [ELECTION-EO13848] (Linked To: SOUTHFRONT)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "DUGINA, Darya Aleksandrovn", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KILIMNIK, Konstantin Viktorovic", :nationality => "Ukraine", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "MAMAKOVA, Aelita Leonidovn", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CYBER2] [ELECTION-EO13848] (Linked To: SOUTHFRONT)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "PRIBYSHIN, Taras Kirillovic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "SHCHERBAKOV, Kirill Konstantinovic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "STEPANOV, Artem Nikolaevic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "CENG, Guowei", :nationality => "Hong Kong", :risk => "pursuant to the Hong Kong Autonomy Act of 2020 -Public Law 116-149", :image => ''

u2.sanctions << s

s = Sanction.create :name => "CHAN, Eric Kwok-ki", :nationality => "Hong Kong", :risk => "pursuant to the Hong Kong Autonomy Act of 2020 - Public Law 116-149", :image => ''

u2.sanctions << s

s = Sanction.create :name => "CHENG, Teresa Yeuk-wah", :nationality => "Hong Kong", :risk => "pursuant to the Hong Kong Autonomy Act of 2020 - Public Law 116-149", :image => ''

u2.sanctions << s

s = Sanction.create :name => "CHOI, Chin-pang", :nationality => "Hong Kong", :risk => "pursuant to the Hong Kong Autonomy Act of 2020 - Public Law 116-149", :image => ''

u2.sanctions << s

s = Sanction.create :name => "DENG, Zhonghu", :nationality => "China", :risk => "pursuant to the Hong Kong Autonomy Act of 2020 - Public Law 116-149", :image => ''

u2.sanctions << s

s = Sanction.create :name => "LAM CHENG, Carrie Yuet-ngor", :nationality => "Hong Kong", :risk => "pursuant to the Hong Kong Autonomy Act of 2020 - Public Law 116-149", :image => ''

u2.sanctions << s

s = Sanction.create :name => "LEE, John Ka-chiu", :nationality => "Hong Kong", :risk => "pursuant to the Hong Kong Autonomy Act of 2020 - Public Law 116-149", :image => ''

u2.sanctions << s

s = Sanction.create :name => "LAU, Chi Wai", :nationality => "China", :risk => "pursuant to the Hong Kong Autonomy Act of 2020 - Public Law 116-149", :image => ''

u2.sanctions << s

s = Sanction.create :name => "LEE, Kwai-wah", :nationality => "China", :risk => "pursuant to the Hong Kong Autonomy Act of 2020 - Public Law 116-149", :image => ''

u2.sanctions << s

s = Sanction.create :name => "LI, Jiangzho", :nationality => "China", :risk => "pursuant to the Hong Kong Autonomy Act of 2020 - Public Law 116-149", :image => ''

u2.sanctions << s

s = Sanction.create :name => "LUO, Huinin", :nationality => "China", :risk => "pursuant to the Hong Kong Autonomy Act of 2020 - Public Law 116-149", :image => ''

u2.sanctions << s

s = Sanction.create :name => "YOU, Qua", :nationality => "China", :risk => "pursuant to the Hong Kong Autonomy Act of 2020 - Public Law 116-149", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ZHANG, Xiaomin", :nationality => "China", :risk => "pursuant to the Hong Kong Autonomy Act of 2020 - Public Law 116-149", :image => ''

u2.sanctions << s

s = Sanction.create :name => "AYAN, Sidki", :nationality => "Turkey", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "CELIK, Abdulhamid", :nationality => "Turkey", :risk => "section 1(b) of Executive Order 13224, as amended byExecutive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "GUNDUZ, Seyyid Cema", :nationality => "Turkey", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "HAMIDI, Mihrab Suhrab", :nationality => "Afghanistan", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KARIMIAN, Mohammad Sadeg", :nationality => "Iran", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KASHANI, Alireza", :nationality => "Iran", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "NABIZADA, Kamaluddin Gulam", :nationality => "Afghanistan", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "OZTAS, Kasim", :nationality => "Turkey", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "SANLI, Hakki Selcu", :nationality => "Turkey", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "TEKE, Mura", :nationality => "Turkey", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ALAR, Roman Anatolyevic", :nationality => "Russia", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "BOSHIROV, Ruslan", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CAATSA - RUSSIA] (Linked To: MAIN INTELLIGENCE DIRECTORATE)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "CHANG, Tony", :nationality => "Taiwan", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "CHO, Ch'o'l-so'ng", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "CHOE, Chun Sik", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "CHOE, Myong Hyon", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "CHOW, Tony", :nationality => "China", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "CHUGULEVA, Aleyona Anatolyevn", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CYBER2] [ELECTION-EO13848] (Linked To: SOUTHFRONT)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "DOROKHOVA, Nina Viktorovn", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CYBER2] [CAATSA - RUSSIA] (Linked To: INFOROS, OOO)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "FEDIN, Yuriy Sergeyevic", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CYBER2] (Linked To: NEWSFRONT)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "HAN, Chang-su", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "HYON, Gwang Il", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ILYASHENKO, Andrey Vitalyevic", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CYBER2] [CAATSA - RUSSIA] (Linked To: INFOROS, OOO)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "JIAN, WenJi", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KAMYSHANOVA, Aleksandra Aleksandrovn", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CYBER2] [CAATSA - RUSSIA] (Linked To: INFOROS, OOO)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KANG, Chol Hak", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KIM, CHIN-SO'K", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KIM, Hak Song", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KIM, Kyong Nam", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KIM, Song Hun", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KIRILLOVA, Anastasiya Sergeyevn", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CYBER2] [CAATSA - RUSSIA] (Linked To: INFOROS, OOO)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KNYRIK, Konstantin Sergeyevic", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KRANS, Maksim Iosifovic", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CYBER2] [CAATSA - RUSSIA] (Linked To: INFOROS, OOO)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "MAMAKOVA, Aelita Leonidovn", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CYBER2] [ELECTION-EO13848] (Linked To: SOUTHFRONT)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "MISHKIN, Alexander Yevgeniyevich", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CAATSA - RUSSIA] (Linked To: MAIN INTELLIGENCE DIRECTORATE)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "NEZHDANOVA, Yevgeniya Vitalyevn", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CYBER2] [CAATSA - RUSSIA] (Linked To: INFOROS, OOO)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "O, Yong H", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "PETROV, Alexander", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CAATSA - RUSSIA] (Linked To: MAIN INTELLIGENCE DIRECTORATE)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "POGREBENKOV, Valeriy Ivanovic", :nationality => "Russia", :risk => "Ukraine-Russia-Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CYBER2] [CAATSA - RUSSIA] (Linked To: INFOROS, OOO)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "PYON, Kwang Chol", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "RI, Che-Son", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "RI, Su Yon", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "SIM, Kwang Sok", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "SON, Jong Hyok", :nationality => "North Korea", :risk => "North Korea Sanctions Regulations, sections 510.201 and 510.210", :image => ''

u2.sanctions << s

s = Sanction.create :name => "TYURIN, Denis Valeriyevic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 (individual) [NPWMD] [CYBER2] [CAATSA - RUSSIA] (Linked To: MAIN INTELLIGENCE DIRECTORATE)", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ALTABAEVA, Ekaterina Borisovna", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "BABAKOV, Aleksandr Mikhailovich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "BAKHAREV, Konstantin Mikhailovich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "BELIK, Dmitriy Anatolyevich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "BORODAY, Alexander Yuryevich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "CHEMEZOV, Sergey Victorovich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "DIKIY, Aleksey Aleksandrovich", :nationality => "Ukraine", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "DYKIY, Oleksii Oleksandrovych", :nationality => "Ukraine", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "DZHABAROV, Vladimir Michailovich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "IZRAITEL, Sergey Vladilenovich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KERIMOV, Suleiman Abusaidovich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KIRIYENKO, Sergei Vladilenovich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KLISHAS, Andrei", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KOSACHEV, Konstantin Iosifovic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KOVALCHUK, Kirill Mikhailovich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KOVALCHUK, Yuri Valentinovich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KOZHIN, Vladimir Igorevic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KRASKO, Ekaterina Yurievna", :nationality => "Ukraine", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KRASNOV, Igor Victorovich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KRIVORUCHKO, Aleksei Yurievich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "LEBEDEV, Dmitri Alekseevic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "MALOFEEV, Konstantin Valerevich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "MATVIYENKO, Valentina Ivanovna", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "MIRONOV, Sergei Mikhailovich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "MIZULINA, Elena Borisovna", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "NARYSHKIN, Sergei", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "PATRUSHEV, Nikolai Platonovich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "REZNIK, Vladislav Matusovic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "RIZHKOV, Nikolay Ivanovich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ROTENBERG, Arkadii Romanovic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ROTENBERG, Boris Romanovic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "RYZHKOV, Nikolai Ivanovic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "SLUTSKI, Leonid Eduardovic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "TSEKOV, Serge", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "VOLODIN, Vyacheslav Victorovic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ZOLOTOV, Viktor Vasiliyevich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "AADAN, Mahad Ciise", :nationality => "Somalia", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ABADIGGA, Abdella Asid", :nationality => "Ethiopia", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ABDALE, Qaaliif", :nationality => "Djibouti", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ABDALLAH, Ahmad Jalal Reda", :nationality => "Lebanon", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ABDALLAH, Ali Red", :nationality => "Lebanon", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ABDALLAH, Hussein Ahmad", :nationality => "Lebanon", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ABDALLAH, Hussein Red", :nationality => "Lebanon", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ADAMU, Salih Yusuf", :nationality => "Nigeria", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ADAN, Mahad Isse", :nationality => "Somalia", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ADEN, Mohamed Abdi", :nationality => "Kenya", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ADHIGUNA LESMANA, Dandi", :nationality => "Indonesia", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ADNAN, Ali Ayad", :nationality => "Lebanon", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "AHMED, Abdu Abdullah", :nationality => "Yemen", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "AKBAR, Mohamad", :nationality => "South Africa", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "AKBAR, Nufael", :nationality => "South Africa", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "AKBAR, Yunus Mohamad", :nationality => "South Africa", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ALAMAH, Jihad Salim", :nationality => "Lebanon", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ALESMAIL, Omar Abdulhameed", :nationality => "Iraq", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ALI, Osama", :nationality => "Palestine", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ALISMAEEL, Abdulhameed Salim Ibrahim", :nationality => "Iraq", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "AL-KHATUNI, Umar Abdul Hamid Salim Brukan", :nationality => "Iraq", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "AL-ZAYN, Muhammad", :nationality => "Lebanon", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ARTEMOV, Viktor Sergiyovic", :nationality => "Ukraine", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ASLAN, Hasmet", :nationality => "Jordan", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ATIEH, Hussein", :nationality => "Lebanon", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ATO, Mustaf", :nationality => "Somalia", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ATTIA, Hussein Kamel", :nationality => "Lebanon", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "AYAN, Bahaddin", :nationality => "Turkey", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "BA DAS, Muhammad Ali", :nationality => "Yemen", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "BAKR, Osama Abd Elmongy Abdalla", :nationality => "Egypt", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "CASCARI, Abdulaziz", :nationality => "Turkey", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "DAOUN, Ali Mohamad", :nationality => "Lebanon", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "DHIYAB, 'Adil 'Ali", :nationality => "Lebanon", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "DHUFAAYE, Cabdi Muhammad", :nationality => "Somalia", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "DIAB, Ali Ade", :nationality => "Lebanon", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "EL KHALIL, Hassan Kazem", :nationality => "Lebanon", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "FAZZONE, Gregori", :nationality => "Switzerland", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "GAGAALE, Abdikarim Hussein", :nationality => "Somalia", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "HERYADI, Rud", :nationality => "Indonesia", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "HOOMER, Farhad", :nationality => "South Africa", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ISSE MOHAMUD, Abdirahman Fahiye", :nationality => "Somalia", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "JEERI, Abdullahi", :nationality => "Somalia", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "JIIS, Yasi", :nationality => "Somalia", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KARDIAN, Ar", :nationality => "Indonesia", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "MAHMUD, Usama", :nationality => "Pakistan", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "MANSOUR, Adel Mohamad", :nationality => "Lebanon", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "MARUF, Muhammad", :nationality => "Pakistan", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "MATAAN, Ahmed Hasan Ali Sulaiman", :nationality => "Yemen", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "MEHMOOD, Osama", :nationality => "Pakistan", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "MILLER, Siraa", :nationality => "South Africa", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "MIRE, Mohame", :nationality => "Somalia", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "MOHAMED, Liban Yusuf", :nationality => "Somalia", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "MUHAMMAD, Mahad Cise", :nationality => "Somalia", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "MUHAMMAD, Surajo Abu Bakr", :nationality => "Nigeria", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "NABIZADA, Kamaluddin Gulam", :nationality => "Afghanistan", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "NAFRIEH, Edma", :nationality => "Iran", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "NESER, Naser Hassan", :nationality => "Lebanon", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "NUREY, Abdelrahman", :nationality => "Somalia", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ODEH, Ahmed Sharif Abdallah", :nationality => "Jordan", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "OMAR, Ahmed Haji Ali Haji", :nationality => "Somalia", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "QAHIYE, Mohamed Ahme", :nationality => "Somalia", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "RYABIKOVA, Tatiana", :nationality => "France", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "SABRI, Abdallah Yusuf Faisal", :nationality => "Jordan", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "SALAD, Mohamed Hussei", :nationality => "Somalia", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "SAMAD, Abdi", :nationality => "Somalia", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "SHEVCHUK, Stanislav", :nationality => "Ukraine", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "STAVRIDIS, Konstantino", :nationality => "Greece", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "SULAIMAN, Ahmad Matan Hassan Ali", :nationality => "Yemen", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "TAHER, Fadlallah Brahim", :nationality => "Lebanon", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "THULIN, Anto", :nationality => "Sweden", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "TURKMAN, Musab", :nationality => "Turkey", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "UBAIDULLAH, Maulana", :nationality => "Pakistan", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "YUSUF, Bashir Al", :nationality => "Nigeria", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "YUSUF, Isse Mohamed", :nationality => "Somalia", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ZAHEDI, Roozbeh", :nationality => "Iran", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ZHUCHKOVSKIY, Aleksander", :nationality => "Russia", :risk => "section 1(b) of Executive Order 13224, as amended by Executive Order 13886", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ALTABAEVA, Ekaterina", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "BAKHAREV, Konstantin Mikhailovich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "BELIK, Dmitriy Anatolyevich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "BORODAI, Aleksandr", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "DIKIY, Aleksey Aleksandrovich", :nationality => "Ukraine", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "GRAMASHOV, Dmitrij Sergeevich", :nationality => "Ukraine", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "GUBAREVA, Ekaterina", :nationality => "Ukraine", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "JURJEVICH, Ryauzov Denis", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KAMSHILOV, Oleg Anatolievic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KARANDA, Pavel Leonidovic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "MIHAJLYUK, Leonid Vladimirovich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "NIKULOV, Gennadii Anatolievich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "RJAUZOW, Denis", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "TERENTIEV, Vladimir", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "TSEKOV, Sergei", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ZDRILYUK, Sergei", :nationality => "Ukraine", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ZDRYLYUK, Serhiy", :nationality => "Ukraine", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "BABAKOV, Aleksandr Mikhailovich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "BBOYARKIN, Victor Alekseyevic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "CHEMEZOV, Sergei", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "CHEREZOV, Andrei", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "CHERNYKH, Tatiana", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "DUGINA, Darya Aleksandrovn", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "DZHABAROV, Vladimir", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "GRABCHAK, Evgeniy", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "IOFFE, Eduard", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "IZRAITEL, Sergey Vladilenovich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KALASHNIKOV, Aleksandr", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KARAMIAN, Vakhtang", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KERIMOV, Suleiman Abusaidovich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KIRIYENKO, Sergei Vladilenovich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KLISHAS, Andrei", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KOSACHEV, Konstantin Iosifovic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KOVALCHUK, Yuri Valentinovich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KOZHIN, Vladimir Igorevic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KRASNOV, Igor Victorovich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KRIVORUCHKO, Aleksei Yurievich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "LEBEDEV, Dmitri Alekseevic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "MATVIYENKO, Valentina Ivanovna", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "MIRONOV, Sergei Mikhailovich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "MIZULINA, Elena Borisovna", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "MIZULINA, Yelena Borisovna", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "NARYSHKIN, Sergey Yevgenyevich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "PATRUSHEV, Nikolai Platonovich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "PLISYUK, Mikhail Alekseyevic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "POPOV, Pavel Anatolievic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "PRIBYSHIN, Taras Kirillovic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "REZNIK, Vladislav Matusovic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "RIZHKOV, Nikolay Ivanovich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "SHCHERBAKOV, Kirill Konstantinovic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "SHKOLOV, Evgeniy Mikhailovic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "SLUTSKI, Leonid Eduardovich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "STEPANOV, Artem Nikolaevic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "VOLODIN, Vyacheslav Victorovic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "VOROBEV, Aleksandr Nikolayevic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "YARIN, Andrei Veniaminovic", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ZOLOTOV, Viktor Vasiliyevich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ROTENBERG, Igor Arkadevich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "BELOUSOV, Mikhail Nikolaevich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "BULGAKOV, Sergei Viktorovich", :nationality => "Ukraine", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "DOLGOPOLOV, Andrei Nikolaevich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "ERMAKOVA, Mariya Gennadevna", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "GRAMASHOV, Dmitrij Sergeevich", :nationality => "Ukraine", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "KRILLO, Pavlo Valeriyovich", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "LOGINOV, Ilya", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "MEZHEILIANSKY, Viktor", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "OKOROKOV, Ivan", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "RIZHENKIN, Leonid", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "STEPANYAN, Karen", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

s = Sanction.create :name => "YERMAKOVA, Maria", :nationality => "Russia", :risk => "Ukraine-Russia- Related Sanctions Regulations, 31 CFR 589.201 andor 589.209", :image => ''

u2.sanctions << s

