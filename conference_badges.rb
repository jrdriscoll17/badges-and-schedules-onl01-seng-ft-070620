def batch_badge_creator(speakers)
  speaker_badges = []
  speakers.each{|speaker| speaker_badges.push(badge_maker(speaker))}
  return speaker_badges
end

def badge_maker(name)
  return "Hello, my name is #{name}."
end

def assign_rooms(speakers)
  speakers_with_rooms = []
  
  speakers.each_with_index do |speaker, index| 
    speakers_with_rooms << "Hello, #{speaker}! You'll be assigned to room #{index + 1}!"
  end
  
  puts speakers_with_rooms
  return speakers_with_rooms
end

assign_rooms(["Ian", "Sarah", "Kate", "John"])

def printer(speakers)
  batch_badge_creator(speakers).each{|badge| puts badge}
  assign_rooms(speakers).each{|assignment| puts assignment}
end