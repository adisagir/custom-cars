# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users
joshua = User.create(name: "Joshua", image_link: "https://i.imgur.com/4nbXSQD.jpg", vehicle_nickname: "blacky")
andrew = User.create(name: "Andrew", image_link: "https://i.imgur.com/4nbXSQD.jpg", vehicle_nickname: "reddu")
travis = User.create(name: "Travis", image_link: "https://i.imgur.com/4nbXSQD.jpg", vehicle_nickname: "asdf")
bob = User.create(name: "Bob", image_link: "https://i.imgur.com/4nbXSQD.jpg", vehicle_nickname: "rt")
charlotte = User.create(name: "Charlotte", image_link: "https://i.imgur.com/4nbXSQD.jpg", vehicle_nickname: "SLi")

# Makes
# tesla = Make.create(name: "Tesla", country: "USA")
# ford = Make.create(name: "Ford", country: "USA")
# chevy = Make.create(name: "Chevrolet", country: "USA")
# dodge = Make.create(name: "Dodge", country: "USA")
# delorean = Make.create(name: "Delorean", country: "USA")
audi = Make.create(name: "Audi", country: "Germany")
# rolls_royce = Make.create(name: "Rolls Royce", country: "UK")
# bentley = Make.create(name: "Bentley", country: "UK")
# aston_martin = Make.create(name: "Aston Martin", country: "UK")
# mclaren = Make.create(name: "McLaren", country: "UK")
# bugatti = Make.create(name: "Bugatti", country: "France")
# peugeot = Make.create(name: "Peugeot", country: "France")
bmw = Make.create(name: "BMW", country: "Germany")
mercedes = Make.create(name: "Mercedes-Benz", country: "Germany")
# volkswagen = Make.create(name: "Volkswagen", country: "Germany")
# toyota = Make.create(name: "Toyota", country: "Japan")
# nissan = Make.create(name: "Nissan", country: "Japan")
# honda = Make.create(name: "Honda", country: "Japan")
# suzuki = Make.create(name: "Suzuki", country: "Japan")
# mazda = Make.create(name: "Mazda", country: "Japan")
# subaru = Make.create(name: "Subaru", country: "Japan")
# ferrari = Make.create(name: "Ferrari S.p.A", country: "Italy")
# fiat = Make.create(name: "Fiat S.p.A", country: "Italy")
# lamborghini = Make.create(name: "Lamborghini", country: "Italy")
# maserati = Make.create(name: "Maserati", country: "Italy")
# hyundai = Make.create(name: "Hyundai", country: "South Korea")
# kia = Make.create(name: "Kia", country: "South Korea")

# Models
# BMW
m5 = Model.create(user_id: 1, make_id: 2, vehicle_id: "195G", fabric_id: "FLKD8", sa_id: ",S0302,S0316,S0322,S03AG,S0465,S0552,S05AC,S0776", name: "M5", year: 2019, style: "Sedan", engine: "4.4 liter BMW M Performance TwinPower Turbo V-8", msrp: 102_700, specs: "600 Maximum Horsepower, 0-60 MPH in 3.2 Seconds, 553 LB-FT of Torque", drivetrain: "AWD", transmission: "8-speed M STEPTRONIC Automatic transmission")
m5_comp = Model.create(user_id: 2, make_id: 2, vehicle_id: "195R", fabric_id: "FLKD8", sa_id: "S01MA,S02FQ,S0302,S0316,S0322,S03AG,S0465,S0552,S05AC,S0776,S07M9,S07MA", name: "M5 Competition", year: 2019, style: "Sedan", engine: "4.4 liter BMW M Performance TwinPower Turbo V-8", msrp: 110_000, specs: "617 Maximum Horsepower, 0-60 MPH in 3.1 Seconds, 553 LB-FT of Torque", drivetrain: "AWD", transmission: "8-speed M STEPTRONIC Automatic transmission")
m850i = Model.create(user_id: 3, make_id: 2, vehicle_id: "198C", fabric_id: "FVASW", sa_id: ",S02NH,S02VW,S0302,S0322,S03DZ,S05AC,S05AZ,S06CP,S0715,S0754,S0760,S0775", name: "M850i xDrive", year: 2019, style: "Coupe", engine: "4.4 liter BMW M Performance TwinPower Turbo V-8", msrp: 111_900, specs: "523 Maximum Horsepower, 0-60 MPH in 3.6 Seconds, 553 LB-FT of Torque", drivetrain: "AWD", transmission: "8-speed M STEPTRONIC Automatic transmission")
x7 = Model.create(user_id: 5, make_id: 2, vehicle_id: "19SB", fabric_id: "FMCSW", sa_id: ",S0302,S0322,S03AT,S03MB,S0420,S05A1,S05AC,S05DN,S0610,S07LY", name: "X7 xDrive50i", year: 2019, style: "SAV", engine: "4.4 liter TwinPower Turbo V-8", msrp: 92_600, specs: "456 Maximum Horsepower, 0-60 MPH in 5.2 Seconds, 479 LB-FT of Torque", drivetrain: "AWD", transmission: "8-speed M STEPTRONIC Automatic transmission")
# AUDI
# s4 = Model.create(user_id: 1, make_id: 1, name: "S4", year: 2019, style: "Sedan", engine: "3.0 liter turbocharged TFSI V-6", msrp: 57_800, specs: "349 Maximum Horsepower, 0-60 MPH in 4.4 Seconds, 369 LB-FT of Torque", drivetrain: "AWD", transmission: "8-speed Tiptronic Automatic transmission")
# r8 = Model.create(user_id: 2, make_id: 1, name: "R8", year: 2020, style: "Coupe", engine: "5.2 liter FSI dual-injection V-10", msrp: 169_900, specs: "602 Maximum Horsepower, 0-60 MPH in 3.2 Seconds, 413 LB-FT of Torque", drivetrain: "AWD", transmission: "8-speed Tiptronic Automatic transmission")
# tt = Model.create(user_id: 3, make_id: 1, name: "Ibis White", year: 2019, style: "Convertible", engine: "2.0 liter V-4", msrp: 48_400, specs: "228 Maximum Horsepower, 0-60 MPH in 5.5 Seconds, 258 LB-FT of Torque", drivetrain: "AWD", transmission: "6-speed S Tronic Dual-Clutch transmission")
# MERCEDES
amg_gtr = Model.create(user_id: 4, make_id: 3, vehicle_id: "2018_gtr", sa_id: "0_l6g%2C0_rxa%2C9_pak", name: "AMG GT R", year: 2018, style: "Coupe", engine: "4.0 liter AMG V-8 biturbo", msrp: 159_350, specs: "577 Maximum Horsepower, 0-60 MPH in 3.5 Seconds, 516 LB-FT for Torque", drivetrain: "RWD", transmission: "7-speed AMG SPEEDSHIFT DCT")
amg_e_63_s_wagon = Model.create(user_id: 5, make_id: 3, vehicle_id: "2019_e63s4s", sa_id: "0_rtm%2C0_234%2C0_401%2C0_413%2C0_464%2C0_489%2C0_u25%2C9_996%2C0_l6k", name: "AMG E 63 S Wagon", year: 2019, style: "Wagon", engine: "4.0 liter AMG V-8 biturbo", msrp: 108_850, specs: "603 Maximum Horsepower, 0-60 MPH in 3.4 Seconds, 627 LB-FT for Torque", drivetrain: "AWD", transmission: "AMG SPEEDSHIFT MCT 9-speed")
amg_s_65_cabriolet = Model.create(user_id: 1, make_id: 3, vehicle_id: "2019_s65a", sa_id: "0_647%2C0_740%2C0_729", name: "AMG S 65 Cabriolet", year: 2019, style: "Convertible", engine: "6.0 liter AMG V12 biturbo", msrp: 253_550, specs: "621 Maximum Horsepower, 0-60 MPH in 4.0 Seconds, 738 LB-FT for Torque", drivetrain: "RWD", transmission: "AMG SPEEDSHIFT PLUS 7-speed")

# Paint
# BMW
# M5
m5BSM = BmwColor.create(name:"Black Sapphire Metallic", color_code: "P0475", model_id: 1, color_link: "https://i.imgur.com/1u0jbu3.png")
m5SGM = BmwColor.create(name: "Singapore Gray Metallic", color_code: "P0B41", model_id: 1, color_link: "https://i.imgur.com/QLL6HZg.png") 
m5SRBM = BmwColor.create(name: "Snapper Rocks Blue Metallic", color_code: "P0C1G", model_id: 1, color_link: "https://i.imgur.com/MxGvDR4.png")
m5MBM = BmwColor.create(name: "Marina Blue Metallic", color_code: "P0C1K", model_id: 1, color_link: "https://i.imgur.com/ioMYNn6.png")
m5DGM = BmwColor.create(name: "Donington Grey Metallic", color_code: "P0C28", model_id: 1, color_link: "https://i.imgur.com/ZMp5JJM.png")
m5BM = BmwColor.create(name: "Bluestone Metallic", color_code: "P0C2Y", model_id: 1, color_link: "https://i.imgur.com/N37ltQY.png")
m5AW = BmwColor.create(name: "Alpine White", color_code: "P0300", model_id: 1, color_link: "https://i.imgur.com/CPQfcSa.png")
# M5 Competition
m5CompetitionBSM = BmwColor.create(name:"Black Sapphire Metallic", color_code: "P0475", model_id: 2, color_link: "https://i.imgur.com/1u0jbu3.png")
m5CompetitionSGM = BmwColor.create(name: "Singapore Gray Metallic", color_code: "P0B41", model_id: 2, color_link: "https://i.imgur.com/QLL6HZg.png") 
m5CompetitionSRBM = BmwColor.create(name: "Snapper Rocks Blue Metallic", color_code: "P0C1G", model_id: 2, color_link: "https://i.imgur.com/MxGvDR4.png")
m5CompetitionMBM = BmwColor.create(name: "Marina Blue Metallic", color_code: "P0C1K", model_id: 2, color_link: "https://i.imgur.com/ioMYNn6.png")
m5CompetitionDGM = BmwColor.create(name: "Donington Grey Metallic", color_code: "P0C28", model_id: 2, color_link: "https://i.imgur.com/ZMp5JJM.png")
m5CompetitionBM = BmwColor.create(name: "Bluestone Metallic", color_code: "P0C2Y", model_id: 2, color_link: "https://i.imgur.com/N37ltQY.png")
m5CompetitionAW = BmwColor.create(name: "Alpine White", color_code: "P0300", model_id: 2, color_link: "https://i.imgur.com/CPQfcSa.png")
# M850i 
m850iBSM = BmwColor.create(name:"Black Sapphire Metallic", color_code: "P0475", model_id: 3, color_link: "https://i.imgur.com/VYPfyRM.png")
m850iCBM = BmwColor.create(name: "Carbon Black Metallic", color_code: "P0416", model_id: 3, color_link: "https://i.imgur.com/YNVTXse.png") 
m850iMWM = BmwColor.create(name: "Mineral White Metallic", color_code: "P0A96", model_id: 3, color_link: "https://i.imgur.com/VyfDJ3S.png")
m850iSSB = BmwColor.create(name: "Sonic Speed Blue", color_code: "P0C1A", model_id: 3, color_link: "https://i.imgur.com/2GThuUi.png")
m850iSOM = BmwColor.create(name: "Sunset Orange Metallic", color_code: "P0C1X", model_id: 3, color_link: "https://i.imgur.com/5opDzsU.png")
m850iBBM = BmwColor.create(name: "Barcelona Blue Metallic", color_code: "P0C38", model_id: 3, color_link: "https://i.imgur.com/bXKDayg.png")
m850iAW = BmwColor.create(name: "Alpine White", color_code: "P0300", model_id: 3, color_link: "https://i.imgur.com/gBQp1ys.png")
m850iDGM = BmwColor.create(name: "Dravit Grey Metallic", color_code: "P0C36", model_id: 3, color_link: "https://i.imgur.com/hG3sEfn.png")
m850iTBM = BmwColor.create(name: "Tanzanite Blue II Metallic", color_code: "P0C3Z", model_id: 3, color_link: "https://i.imgur.com/WfQkC4O.png")
# X7
x7BSM = BmwColor.create(name: "Black Sapphire Metallic", color_code: "P0475", model_id: 4, color_link: "https://i.imgur.com/VYPfyRM.png") 
x7DGM = BmwColor.create(name: "Dark Graphite Metallic", color_code: "P0A90", model_id: 4, color_link: "https://i.imgur.com/KCLcHEV.png")
x7MWM = BmwColor.create(name: "Mineral White Metallic", color_code: "P0A96", model_id: 4, color_link: "https://i.imgur.com/VyfDJ3S.png")
x7PBM = BmwColor.create(name: "Phytonic Blue Metallic", color_code: "P0C1M", model_id: 4, color_link: "https://i.imgur.com/TOhJhyo.png")
x7VBM = BmwColor.create(name: "Vermont Bronze Metallic", color_code: "P0C1Z", model_id: 4, color_link: "https://i.imgur.com/2MYKb2J.png")
x7AGM = BmwColor.create(name: "Arctic Grey Metallic", color_code: "P0C27", model_id: 4, color_link: "https://i.imgur.com/K3OqkOZ.png")
x7AW = BmwColor.create(name: "Alpine White", color_code: "P0300", model_id: 4, color_link: "https://i.imgur.com/gBQp1ys.png")
x7JB = BmwColor.create(name: "Jet Black", color_code: "P0668", model_id: 4, color_link: "https://i.imgur.com/ZnuHh23.png")

# Wheels
# M5
m5_705 = BmwWheel.create(wheel_link: "https://i.imgur.com/pLDpZ8I.png", wheel_code: "S022A", wheel_name: "19_ M Double-spoke bi-color wheels, style 705M with performance non run-flat tires", model_id: 1) 
m5_706 = BmwWheel.create(wheel_link: "https://i.imgur.com/XibVCCE.png", wheel_code: "S022B", wheel_name: "20_ M Double-spoke bi-color wheels, style 706M with performance non run-flat tires", model_id: 1)
m5_706B = BmwWheel.create(wheel_link: "https://i.imgur.com/6KJ81a7.png", wheel_code: "S02AQ", wheel_name: "20_ M Double-spoke black wheels, style 706M with performance non run-flat tires", model_id: 1)
# M850i
m850i_727 = BmwWheel.create(wheel_link: "https://i.imgur.com/oQvfRC2.png", wheel_code: "S01N3", wheel_name: "19_ M Double-spoke orbit grey wheels, style 727M with all-season run-flat tires", model_id: 3)
m850i_728 = BmwWheel.create(wheel_link: "https://i.imgur.com/9ozzcEk.png", wheel_code: "S01N7", wheel_name: "120_ M V-spoke bi-color orbit grey wheels, style 728M with performance run-flat tires", model_id: 3)
# X7
x7_753 = BmwWheel.create(wheel_link: "https://i.imgur.com/pYWejas.png", wheel_code: "S01XK", wheel_name: "21_ Y-Spoke bi-color ferric grey wheels, style 753 with all-season run-flat tires", model_id: 4)
x7_752 = BmwWheel.create(wheel_link: "https://i.imgur.com/AvOu6Xa.png", wheel_code: "S01XE", wheel_name: "21_ Y-Spoke black wheels, style 752 with all-season run-flat tires", model_id: 4)
x7_757 = BmwWheel.create(wheel_link: "https://i.imgur.com/QLVMAp3.png", wheel_code: "S01YC", wheel_name: "22_ Multi-spoke bi-color ferric grey wheels, style 757 with performance run-flat tires", model_id: 4)
x7_756 = BmwWheel.create(wheel_link: "https://i.imgur.com/7jgAzZk.png", wheel_code: "S01SL", wheel_name: "22_ V-spoke bi-color orbit grey wheels, style 756 with performance runflat tires", model_id: 4)
x7_758 = BmwWheel.create(wheel_link: "https://i.imgur.com/cAGJ0m8.png", wheel_code: "S01XR", wheel_name: "22_ Y-spoke bi-color orbit grey wheels, style 758i with performance run-flat tires", model_id: 4)

# AUDI
# S4
# s4IW = AudiColor.create(default_link: "https://drive.google.com/open?id=1XNSezBFqcfg9yHiTs4IAu_AD7pyJ7wo-", side_link: "https://drive.google.com/open?id=1ef8egBFbSMod40M_SbwDpt-vOo_ZVKnW", left_link: "https://drive.google.com/open?id=1FEztHXCjQ3Ccymvl4ogFWYR3Cr6-Hc4V", back_link: "https://drive.google.com/open?id=1oQrb_Qw48fAqsSck034l_MHj2kNM0gRM", front_link: "https://drive.google.com/open?id=1_orN7Pu1-Oyd-hxg3ABnYxeOy4l1v_tb", model_id: 5)
# s4BB = AudiColor.create(default_link: "https://drive.google.com/open?id=1P_WtW4NPgJE5I43nhmwnxz7NmWF9LelO", side_link: "https://drive.google.com/open?id=1oxtQXJmRFonpXIY360u9alz4hCvPTyHp", left_link: "https://drive.google.com/open?id=1koBZ9y3JBfhICxG2sR8ShBZkSk5P4zFi", back_link: "https://drive.google.com/open?id=1sWjijkkvTAeDO-zVbn2x_ypcT079j3PT", front_link: "https://drive.google.com/open?id=1muPDjf3wu3W5FMdyYVLbuN_TfKa8CSPh", model_id: 5)

# MERCEDES
# AMG GT R COUPE
amg_gtrB = MercedesColor.create(name:"Black", color_code: "040", model_id: 5, color_link: "https://i.imgur.com/4nbXSQD.jpg")
amg_gtrMBM = MercedesColor.create(name:"Magnetite Black Metallic", color_code: "183", model_id: 5, color_link: "https://i.imgur.com/CEpFmGm.jpg")
amg_gtrJR = MercedesColor.create(name:"Jupiter Red", color_code: "589", model_id: 5, color_link: "https://i.imgur.com/KBFmfab.jpg")
amg_gtrISM = MercedesColor.create(name:"Iridium Silver Metallic", color_code: "775", model_id: 5, color_link: "https://i.imgur.com/aanSbLU.jpg")
amg_gtrBBM = MercedesColor.create(name:"Brilliant Blue Metallic", color_code: "896", model_id: 5, color_link: "https://i.imgur.com/1EfD9bC.jpg")
amg_gtrSGM = MercedesColor.create(name:"Selenite Grey Metallic", color_code: "992", model_id: 5, color_link: "https://i.imgur.com/uBjjWBP.jpg")
amg_gtrDCRM = MercedesColor.create(name:"designo Cardinal Red Metallic", color_code: "996", model_id: 5, color_link: "https://i.imgur.com/10UoBVw.jpg")
amg_gtrDDWM = MercedesColor.create(name:"designo Diamond White Metallic", color_code: "799", model_id: 5, color_link: "https://i.imgur.com/AHJkAbS.jpg")
amg_gtrDSGM = MercedesColor.create(name:"designo Selenite Grey Magno", color_code: "297", model_id: 5, color_link: "https://i.imgur.com/os1UiCI.jpg")
amg_gtrDISM = MercedesColor.create(name:"designo Iridium Silver Magno", color_code: "982", model_id: 5, color_link: "https://i.imgur.com/hFjMAs2.jpg")
amg_gtrASYM = MercedesColor.create(name:"AMG Solarbeam Yellow Metallic", color_code: "278", model_id: 5, color_link: "https://i.imgur.com/7G6CfbW.jpg")
amg_gtrAGHM = MercedesColor.create(name:"AMG Green Hell Magno", color_code: "376", model_id: 5, color_link: "https://i.imgur.com/bBzc9uc.jpg")
# AMG E 63 S Wagon
amg_e_63_s_wagonB = MercedesColor.create(name: "Black", color_code: "040", model_id: 6, color_link: "https://i.imgur.com/4nbXSQD.jpg")
amg_e_63_s_wagonPW = MercedesColor.create(name: "Polar White", color_code: "149", model_id: 6, color_link: "https://i.imgur.com/gaoQX57.jpg")
amg_e_63_s_wagonOBM = MercedesColor.create(name: "Obsidian Black Metallic", color_code: "197", model_id: 6, color_link: "https://i.imgur.com/Y83InO6.jpg")
amg_e_63_s_wagonISM = MercedesColor.create(name: "Iridium Silver Metallic", color_code: "775", model_id: 6, color_link: "https://i.imgur.com/aanSbLU.jpg")
amg_e_63_s_wagonLBM = MercedesColor.create(name: "Lunar Blue Metallic", color_code: "890", model_id: 6, color_link: "https://i.imgur.com/XzhEDOj.jpg")
amg_e_63_s_wagonSGM = MercedesColor.create(name: "Selenite Grey Metallic", color_code: "992", model_id: 6, color_link: "https://i.imgur.com/uBjjWBP.jpg")
amg_e_63_s_wagonDCRM = MercedesColor.create(name: "designo Cardinal Red Metallic", color_code: "996", model_id: 6, color_link: "https://i.imgur.com/4wuVfLd.jpg")
amg_e_63_s_wagonDDWM = MercedesColor.create(name: "designo Diamond White Metallic", color_code: "799", model_id: 6, color_link: "https://i.imgur.com/AHJkAbS.jpg")
amg_e_63_s_wagonDSGM = MercedesColor.create(name: "designo Selenite Grey Magno", color_code: "297", model_id: 6, color_link: "https://i.imgur.com/os1UiCI.jpg")
# AMG S 65 Cabriolet
amg_s_65_cabrioletB = MercedesColor.create(name:"Black", color_code: "040", model_id: 7, color_link: "https://i.imgur.com/4nbXSQD.jpg")
amg_s_65_cabrioletMBM = MercedesColor.create(name:"Magnetite Black Metallic", color_code: "183", model_id: 7, color_link: "https://i.imgur.com/CEpFmGm.jpg")
amg_s_65_cabrioletOBM = MercedesColor.create(name: "Obsidian Black Metallic", color_code: "197", model_id: 7, color_link: "https://i.imgur.com/Y83InO6.jpg")
amg_s_65_cabrioletISM = MercedesColor.create(name:"Iridium Silver Metallic", color_code: "775", model_id: 7, color_link: "https://i.imgur.com/aanSbLU.jpg")
amg_s_65_cabrioletDSM = MercedesColor.create(name:"Diamond Silver Metallic", color_code: "988", model_id: 7, color_link: "https://i.imgur.com/Ta76JRL.jpg")
amg_s_65_cabrioletSGM = MercedesColor.create(name:"Selenite Grey Metallic", color_code: "992", model_id: 7, color_link: "https://i.imgur.com/uBjjWBP.jpg")
amg_s_65_cabrioletEGM = MercedesColor.create(name:"Emerald Green Metallic", color_code: "989", model_id: 7, color_link: "https://i.imgur.com/HaIp5vk.jpg")
amg_s_65_cabrioletABM = MercedesColor.create(name:"Anthracite Blue Metallic", color_code: "998", model_id: 7, color_link: "https://i.imgur.com/12mBQFi.jpg")
amg_s_65_cabrioletLBM = MercedesColor.create(name:"Lunar Blue Metallic", color_code: "890", model_id: 7, color_link: "https://i.imgur.com/XzhEDOj.jpg")
amg_s_65_cabrioletDDWM = MercedesColor.create(name:"designo Diamond White Metallic", color_code: "799", model_id: 7, color_link: "https://i.imgur.com/AHJkAbS.jpg")
amg_s_65_cabrioletDCWM = MercedesColor.create(name:"designo Cashmere White Magno", color_code: "049", model_id: 7, color_link: "https://i.imgur.com/Sb9mEPl.jpg")