module UserCommands
  extend Discordrb::Commands::CommandContainer

  def self.register_user(discord_id)
    @user = Player.new
    @user.discord_id = id
    @user.save!
  end

  command :my_id do |event|
    event.user.id
  end

  command :list_users do
    @players = Player.all.map{|i| i.discord_id }
    @players
  end

  command :register do |event|
    @player = Player.new
    @player.discord_id = event.user.id
   # @player.name = event.user.name
    @player.save
  end
end
