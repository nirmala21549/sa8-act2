class User
    attr_reader :username
    def username=(new_username)
      if new_username.nil? || new_username.empty?
        raise ArgumentError, "Username cannot be empty or nil"
      else
        @username = new_username
      end
    end
  end
  user = User.new
  begin
    user.username = nil
  rescue ArgumentError => e
    puts e.message
  end
  begin
    user.username = ""
  rescue ArgumentError => e
    puts e.message
  end
  begin
    user.username = "JohnDoe"
    puts "Username set to: #{user.username}"
  rescue ArgumentError => e
    puts e.message
  end
  