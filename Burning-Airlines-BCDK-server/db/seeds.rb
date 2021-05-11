Airplane.destroy_all

Airplane.create :name => 'David', :rows => '9', :columns => '3'
Airplane.create :name => 'Bhavya', :rows => '9', :columns => '3'
Airplane.create :name => 'Chris', :rows => '9', :columns => '3'
Airplane.create :name => 'Katie', :rows => '9', :columns => '3'
Airplane.create :name => 'Priyanka', :rows => '9', :columns => '3'
Airplane.create :name => 'Audrey', :rows => '9', :columns => '3'
Airplane.create :name => 'Mauritz', :rows => '9', :columns => '3'
Airplane.create :name => 'Faith', :rows => '9', :columns => '3'
Airplane.create :name => 'DavidJ', :rows => '9', :columns => '3'
Airplane.create :name => 'Kimberley', :rows => '9', :columns => '3'
Airplane.create :name => 'Sam', :rows => '9', :columns => '3'
Airplane.create :name => 'Nelly', :rows => '9', :columns => '3'
Airplane.create :name => 'Paul', :rows => '9', :columns => '3'
Airplane.create :name => 'Mai', :rows => '9', :columns => '3'
Airplane.create :name => 'Joel', :rows => '9', :columns => '3'

puts "#{ Airplane.count } airplanes created."


Flight.destroy_all

Flight.create :origin => 'SYD', :destination => 'MELB', :departure => '212005111700', :arrival => '212005111800'
Flight.create :origin => 'SYD', :destination => 'MELB', :departure => '212005121000', :arrival => '212005121100'
Flight.create :origin => 'SYD', :destination => 'MELB', :departure => '212005131200', :arrival => '212005131300'

Flight.create :origin => 'QLD', :destination => 'MELB', :departure => '212005111700', :arrival => '212005111800'
Flight.create :origin => 'QLD', :destination => 'MELB', :departure => '212005121000', :arrival => '212005121100'
Flight.create :origin => 'QLD', :destination => 'MELB', :departure => '212005131200', :arrival => '212005131300'

Flight.create :origin => 'WA', :destination => 'QLD', :departure => '212005111700', :arrival => '212005111800'
Flight.create :origin => 'WA', :destination => 'QLD', :departure => '212005111000', :arrival => '212005111300'
Flight.create :origin => 'WA', :destination => 'QLD', :departure => '212005111200', :arrival => '212005111500'

puts "#{ Flight.count } flights created."


User.destroy_all

User.create :name => 'David', :email => 'd@bcdk.co', :password => 'chicken', :admin => 'true'
User.create :name => 'Bhavya', :email => 'b@bcdk.co', :password => 'chicken', :admin => 'true'
User.create :name => 'Chris', :email => 'c@bcdk.co', :password => 'chicken', :admin => 'true'
User.create :name => 'Katie', :email => 'k@bcdk.co', :password => 'chicken', :admin => 'true'

puts "#{ User.count } users created"


Reservation.destroy_all

Reservation.create :row_id => '1', :column_id => '1', :user_id => '1', :flight_id => '1'

puts "#{ Reservation.count } reservations created"
