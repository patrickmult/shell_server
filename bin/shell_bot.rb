# Load in rb files from rby dir
# Command/event modules
#Dir[File.dirname(__FILE__) + '/rby/*.rb'].each {|file| require_relative file }
require_relative 'rby/announcer_events.rb'
require_relative 'rby/user_commands.rb'
require_relative 'rby/utility_commands.rb'

class Shell < Discordrb::Commands::CommandBot
  # This is doing absolutely nothing. Can add to init now though
  def initialize(email, password, prefix, attributes = {}, debug = false)
    super(email, password, prefix, attributes = {}, debug = false)
  end
end

shell = Shell.new(ENV["DISCORD_EMAIL"].to_str, ENV["DISCORD_PASS"].to_str, '`')
shell.include! AnnouncerEvents
shell.include! UtilityCommands
shell.include! UserCommands

shell.run

#bot.command :up do |_event, ip
#  event.respond "#{run_py('ip.py', ip)}."
#end
