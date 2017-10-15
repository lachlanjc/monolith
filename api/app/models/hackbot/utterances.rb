module Hackbot
  module Utterances
    # Returns a regex that matches @mentions or regular methods for the given
    # Slack team.
    def self.name(team)
      /(<@#{team.bot_user_id}>|#{team.bot_username})/i
    end

    def self.yes
      /^(yes|yea|yup|yep|ya|sure|ok|yeah|yah|positive|y)/i
    end

    def self.no
      /^(no|nope|nah|negative|n)/i
    end
  end
end
