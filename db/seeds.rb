25.times.each_with_index do |project, index|
  p = Project.create(name: "Project number #{index + 1}", description: "This is my project number #{index + 1}")
  

  p.entries.create(
    date: Date.today - rand(10).days,
    hours: rand(24),
    minutes: rand(60)  
    )
end

#1.upto(25) { |index| Project.create(name: "Project number #{index}", description: "This is my project number #{index}")}
