# Write your code here.

def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
    attendees.collect do |name| #used collect method
      badge_maker(name)
    end
end


def assign_rooms(attendees)
    room=0                        
    attendees.collect do |name|
      room+=1        # setting a counter
      "Hello, #{name}! You'll be assigned to room #{room}!"
    end
  end
  
  def printer(attendees)
    batch_badge_creator(attendees).each do |value| #call previous method
      puts value
    end
    assign_rooms(attendees).each do |value|
      puts value
    end
  end