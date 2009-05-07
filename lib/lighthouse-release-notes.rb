require 'rubygems'
require 'lighthouse-api'

class LighthouseReleaseNotes
  class << self
    def generate(options={})
      Lighthouse.account = options[:account]
      Lighthouse.authenticate(options[:email], options[:password])
      web2 = Lighthouse::Project.find(7135)
      tickets = []
      i = 1
      while true
        ts = web2.tickets(:q => "milestone:#{options[:milestone]}", :page => i)
        break if ts.size <= 0
        tickets << ts
        i = i + 1
      end
      prev_state = nil
      tickets.flatten.sort {|a,b| b.state <=> a.state }.each do |f|
        if f.state != prev_state
          puts ""
          puts "State: #{f.state}"
        end
        puts "- #{f.title} [##{f.number}]"
        prev_state = f.state
      end
      nil
    end
  end
end
