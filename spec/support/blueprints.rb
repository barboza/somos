require 'machinist/active_record'

# Add your blueprints here.

User.blueprint do
  name {'Some nice guy'}
  email {"someniceguy#{sn}@gmail.com"}
  password {'niceguy'}
  password_confirmation {'niceguy'}
  document_number{"94848474747"}
end

Authorization.blueprint do
  user {User.make!}
  provider {"facebook"}
  uid {10000}
end

Mission.blueprint do
  user {User.make!}
  title {'Nice title'}
  description {'Lore ipsum dolor sit amet'}
  category {Category.make!}
  goal {20} 
end

Category.blueprint do
  name {'Example'}
end
