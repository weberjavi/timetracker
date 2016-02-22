# Project.create name: "IronHack", description: "Development bootcamp"
# Project.create name: "Time tracking app"
# Project.create name: "Recipes", description: "Track my favorite recipes"

25.times.each_with_index do |project, index|
  Project.create name: "Project number #{index}", description: "This is my project number #{index}"
end
