25.times.each_with_index do |project, index|
  Project.create(name: "Project number #{index + 1}", description: "This is my project number #{index + 1}")
end

#1.upto(25) { |index| Project.create(name: "Project number #{index}", description: "This is my project number #{index}")}
