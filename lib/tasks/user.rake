namespace :user do
  desc "TODO"

  task update_all: :environment do
      User.all.each do |user|
        user.update(password: "123456")
        FakeJob.perform_later(user)
      end
  end

end
