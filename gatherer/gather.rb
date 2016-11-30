#!/usr/bin/env ruby

require 'wemo'
require 'pp'

class WemoGatherer
  attr_reader :switches, :states

  def initialize
    @switches = []
    @states = {}
  end

  def find_lights
    #    Wemote::Switch.all
    @switches = WeMo.all
  end

  def get_states
    @switches.each do |switch|
      begin
        @states[switch.name] = switch.status
        puts switch.name + " -> " + switch.status
      rescue
      end
    end
  end
end

g = WemoGatherer.new
g.find_lights
g.get_states
pp g.states

exit



pp g.switches
g.switches.each { |s|
 pp s.location 
begin

rescue
  puts '>>FAIL'
end
# pp s.name 

# pp s.status
 }




