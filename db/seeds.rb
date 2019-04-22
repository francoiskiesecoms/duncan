
Booking.delete_all
Session.delete_all
Activity.delete_all
Dog.delete_all
User.delete_all

francois = User.create(firstname:"francois",lastname:"kiesecoms", email:"francois@gmail.com", password:"hellohello", password_confirmation: "hellohello" )

chiots = Activity.create!(capicity:20, name:"Education chiots")
débutant = Activity.create!(capicity:20, name:"Obéissance débutants")
semi_confirmés = Activity.create!(capicity:20, name:"Obéissance semi-confirmés")
confirmés = Activity.create!(capicity:20, name:"Obéissance confirmés")
tricksandplay = Activity.create!(capicity:20, name:"Tricks & play")
jogging = Activity.create!(capicity:20, name:"Jogging canin")
balade = Activity.create!(capicity:20, name:"Balade canine")


Date.strptime("10-April-19", "%d-%b-%y")

session_test_1 = Session.create!(date: DateTime.strptime("24-April-19 09:00", "%d-%b-%y %H:%M"), activity:  chiots, participants: 0, place:"Bois de la Cambre" , coach: "Veronique Pascale" )
session_test_2 = Session.create!(date: DateTime.strptime("23-April-19 10:00", "%d-%b-%y %H:%M"), activity:  débutant, participants: 0, place:"Bois de la Cambre" , coach: "Veronique Pascale"   )
session_test_3 = Session.create!(date: DateTime.strptime("24-May-19 11:00", "%d-%b-%y %H:%M"), activity: semi_confirmés, participants: 0, place: "Bois de la Cambre" , coach: "Veronique Pascale" )
session_test_4 = Session.create!(date: DateTime.strptime("25-April-19 12:00", "%d-%b-%y %H:%M"), activity:  confirmés, participants: 0, place: "Bois de la Cambre" , coach: "Veronique Pascale"  )
session_test_5 = Session.create!(date: DateTime.strptime("26-April-19 18:00", "%d-%b-%y %H:%M"), activity: tricksandplay, participants: 0, place: "Parc de la Woluwe", coach: "Veronique Pascale" )
session_test_6 = Session.create!(date: DateTime.strptime("27-April-19 19:00", "%d-%b-%y %H:%M"), activity: tricksandplay, participants: 0, place: "Parc de la Woluwe", coach: "Veronique Pascale"   )
session_test_7 = Session.create!(date: DateTime.strptime("28-May-19 20:00", "%d-%b-%y %H:%M"), activity: jogging, participants: 0, place:"La Forêt de Soignes" , coach:"Veronique Pascale" )
session_test_8 = Session.create!(date: DateTime.strptime("29-April-19 10:00", "%d-%b-%y %H:%M"), activity: balade, participants: 0, place:"La Forêt de Soignes" , coach:"Veronique Pascale" )
session_test_8 = Session.create!(date: DateTime.strptime("22-April-19 09:00", "%d-%b-%y %H:%M"), activity: balade, participants: 0, place:"La Forêt de Soignes" , coach:"Veronique Pascale" )
session_test_8 = Session.create!(date: DateTime.strptime("24-April-19 09:00", "%d-%b-%y %H:%M"), activity: balade, participants: 0, place:"La Forêt de Soignes" , coach:"Veronique Pascale" )
session_test_8 = Session.create!(date: DateTime.strptime("24-May-19 19:00", "%d-%b-%y %H:%M"), activity: balade, participants: 0, place:"La Forêt de Soignes" , coach:"Veronique Pascale" )
session_test_8 = Session.create!(date: DateTime.strptime("26-April-19 20:00", "%d-%b-%y %H:%M"), activity: balade, participants: 0, place:"La Forêt de Soignes" , coach:"Veronique Pascale" )
session_test_8 = Session.create!(date: DateTime.strptime("27-April-19 11:00", "%d-%b-%y %H:%M"), activity: balade, participants: 0, place:"La Forêt de Soignes" , coach:"Veronique Pascale" )
# session_test_8 = Session.create!(date: DateTime.strptime("28-May-19 20:00", "%d-%b-%y %H:%M"), activity: balade, participants: 0, place:"La Forêt de Soignes" , coach:"Veronique Pascale" )
# session_test_8 = Session.create!(date: DateTime.strptime("29-April-19 19:00", "%d-%b-%y %H:%M"), activity: balade, participants: 0, place:"La Forêt de Soignes" , coach:"Veronique Pascale" )
# session_test_8 = Session.create!(date: DateTime.strptime("22-May-19 18:00", "%d-%b-%y %H:%M"), activity: balade, participants: 0, place:"La Forêt de Soignes" , coach:"Veronique Pascale" )


