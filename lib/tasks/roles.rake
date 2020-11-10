namespace :roles do
  desc "Create Roles"
  task create: :environment do
    ['user', 'admin'].freeze.each do |role|
      Role.find_or_create_by(name: role)
    end
  end

end
