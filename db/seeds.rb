ActiveStorage::Attachment.destroy_all
ActiveStorage::Blob.destroy_all

ProjectTechnology.destroy_all
Technology.destroy_all
Project.destroy_all

# =====================================================
# Technologies
# =====================================================

ruby_on_rails = Technology.create!(name: "Ruby on Rails")
postgresql    = Technology.create!(name: "PostgreSQL")
docker        = Technology.create!(name: "Docker")
tailwind      = Technology.create!(name: "Tailwind CSS")
nodejs        = Technology.create!(name: "Node.js")
rest_api      = Technology.create!(name: "REST API")

# =====================================================
# Passos Tech Tools
# =====================================================

tech_tools = Project.create!(
  title: "Passos Tech Tools",
  slug: "passos-tech-tools",
  description: "SaaS platform for industrial asset management, preventive maintenance and work order tracking built with Ruby on Rails.",
  github_url: "#",
  demo_url: "#",
  featured: true,
  position: 1
)
tech_tools.image.attach(
  io: File.open(Rails.root.join("app/assets/images/passos-tech-tools-dashboard.png")),
  filename: "passos-tech-tools-dashboard.png"
)

tech_tools.technologies << ruby_on_rails
tech_tools.technologies << postgresql
tech_tools.technologies << docker

# =====================================================
# Passos Sports Scoreboard
# =====================================================

sports = Project.create!(
  title: "Passos Sports Scoreboard",
  slug: "passos-sports-scoreboard",
  description: "Football league management platform featuring automatic standings calculation, match scheduling and real-time score management.",
  github_url: "#",
  demo_url: "#",
  featured: true,
  position: 2
)
sports.image.attach(
  io: File.open(Rails.root.join("app/assets/images/sports-scoreboard.png")),
  filename: "sports-scoreboard.png"
)

sports.technologies << ruby_on_rails
sports.technologies << postgresql
sports.technologies << tailwind

# =====================================================
# Passos NASA Dashboard
# =====================================================

nasa = Project.create!(
  title: "Passos NASA Dashboard",
  slug: "passos-nasa-dashboard",
  description: "Interactive dashboard consuming NASA's APOD API to display daily astronomy images with a clean and responsive interface.",
 
  github_url: "#",
  demo_url: "#",
  featured: true,
  position: 3
)
nasa.image.attach(
  io: File.open(Rails.root.join("app/assets/images/nasa-dashboard.png")),
  filename: "nasa-dashboard.png"
)

nasa.technologies << nodejs
nasa.technologies << rest_api
nasa.technologies << docker

puts "✅ #{Project.count} projects created."
puts "✅ #{Technology.count} technologies created."
puts "✅ #{ProjectTechnology.count} associations created."