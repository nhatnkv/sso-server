application = Doorkeeper::Application.create(name: "Web client",
                                             redirect_uri: "http://localhost:3001/users/auth/doorkeeper/callback",
                                             scopes: ["read", "write"])

Doorkeeper::AccessToken.all.each do |token|
  token.update(application_id: application.id)
end

30.times do
  Task.create(name: Faker::Name.name)
end
