require 'machinist/active_record'

# Add your blueprints here.

User.blueprint do
  name {'Some nice guy'}
  email {"someniceguy#{sn}@gmail.com"}
  password {'niceguy'}
  password_confirmation {'niceguy'}
end

Authorization.blueprint do
  user {User.make!}
  provider {"facebook"}
  uid {10000}
end
