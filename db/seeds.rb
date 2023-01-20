User.destroy_all
u1 = User.create :username => 'Jones', :email => 'jonesy@ga.co', :password => 'chicken'
u2 = User.create :username => 'Craig', :email => 'craigsy@ga.co', :password => 'chicken'
puts "#{ User.count } users"



Sanction.destroy_all
s1 = Sanction.create :name => 'Craig', :nationality => 'craigsy@ga.co', :risk => 'chicken', :image => 'chicken'

# CHAN, Eric Kwok-ki (a.k.a. CHAN, Eric; a.k.a. CHAN, Kwok-ki), Flat F, 20 Floor,
# Block 2, Royal Ascot, Shatin, Hong Kong; DOB 05 Apr 1959; POB Hong Kong;
# nationality Hong Kong; Gender Male; Secondary sanctions risk: pursuant to the
# Hong Kong Autonomy Act of 2020 - Public Law 116-149; National ID No. G142458A
# (Hong Kong); Secretary General, Committee for Safeguarding National Security of
# the Hong Kong Special Administrative Region (individual) [HK-EO13936].

# DUGINA, Darya Aleksandrovna, Russia; DOB 15 Dec 1992; nationality Russia; Gender
# Female; Secondary sanctions risk: Ukraine-/Russia-Related Sanctions Regulations,
# 31 CFR 589.201 and/or 589.209 (individual) [UKRAINE-EO13661] [CYBER2] [ELECTION-
# EO13848] (Linked To: UNITED WORLD INTERNATIONAL).