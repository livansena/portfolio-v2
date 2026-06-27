Project.destroy_all

project = Project.create!(
  title: "Passos Tech Tools",
  slug: "passos-tech-tools",
  description: "SaaS platform for industrial asset management, preventive maintenance and work order tracking built with Ruby on Rails.",
  image: "passos-tech-tools-dashboard.png",
  github_url: "#",
  demo_url: "#",
  featured: true,
  position: 1
)

project.technologies.create!([
  { name: "Ruby on Rails" },
  { name: "PostgreSQL" },
  { name: "Docker" }
])

project = Project.create!(
  title: "Passos Sports Scoreboard",
  slug: "passos-sports-scoreboard",
  description: "Football league management platform featuring automatic standings calculation, match scheduling and real-time score management.",
  image: "sports-scoreboard.png",
  github_url: "#",
  demo_url: "#",
  featured: true,
  position: 2
)

project.technologies.create!([
  { name: "Ruby on Rails" },
  { name: "PostgreSQL" },
  { name: "Tailwind CSS" }
])

project = Project.create!(
  title: "Passos NASA Dashboard",
  slug: "passos-nasa-dashboard",
  description: "Interactive dashboard consuming NASA's APOD API to display daily astronomy images with a clean and responsive interface.",
  image: "nasa-dashboard.png",
  github_url: "#",
  demo_url: "#",
  featured: true,
  position: 3
)

project.technologies.create!([
  { name: "Node.js" },
  { name: "REST API" },
  { name: "Docker" }
])

puts "✅ #{Project.count} projects created."