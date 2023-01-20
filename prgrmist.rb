# filename = __dir__ + '/prgrmlst.txt'
# prgrmlst_arr = File.read(filename).split("\n\n")
# srrs = ""
# prgrmlst_arr.each do |sdn|
#     if sdn.include? 'Secondary sanctions risk:' 
#         if sdn.include? 'individual'
#             srrs = srrs + sdn + "\n\n"
#         end
#     end
    
# end
# File.open("srr.txt", 'w+') {|f| f.write(srrs) }

# filename = __dir__ + '/srr.txt'
# srr_arr = File.read(filename).split("\n\n")
# passport_arr = []
# srrs = ""
# srr_arr.each do |srr|
#     unless srr.include? 'Passport' 
#         srrs = srrs + srr + "\n\n"
#     else
#         pass = srr[srr.index('Passport')+9..]
#         pass = pass[0..pass.index(' ')]
#         unless passport_arr.include? pass
#             passport_arr.push pass
#             srrs = srrs + srr + "\n\n"
         
#         end
#     end 
# end
# File.open("srr2.txt", 'w+') {|f| f.write(srrs) }

# filename = __dir__ + '/srr2.txt'
# srr2_arr = File.read(filename).split("\n\n")
# id_arr = []
# srrs = ""
# srr2_arr.each do |srr|
#     unless srr.include? 'National ID No' 
#         srrs = srrs + srr + "\n\n"
#     else
#         srr2 = srr.gsub!("\n",'')
   
#         id = srr2[srr2.index('National ID No')+17..]
#         id = id[0..id.index(' ')]
#         unless id_arr.include? id
#             id_arr.push id
#             srrs = srrs + srr + "\n\n"
#         end
#     end 
# end
# File.open("srr3.txt", 'w+') {|f| f.write(srrs) }

# filename = __dir__ + '/data/srr3.txt'
# srr3_arr = File.read(filename).split("\n\n")
# srrs = ""
# srr3_arr.each do |srr|
#     if srr.include? 'nationality' 
#         srrs = srrs + srr + "\n\n"
#     end 
# end
# File.open("srr4.txt", 'w+') {|f| f.write(srrs) }

filename = __dir__ + '/data/srr4.txt'
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
    risk = srr[risk_index + 26..].gsub("\n"," ").gsub(' /',"").gsub('/',"")[..-2]
    if risk.nil?
        p 'hi'
    end
end
