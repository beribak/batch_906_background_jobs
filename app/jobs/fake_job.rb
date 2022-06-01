class FakeJob < ApplicationJob
  queue_as :default

  def perform(user)
    # Do something later
    puts "Changing password to #{user.email}"
    sleep 10

    puts "Password changed!"
    

  end
end
