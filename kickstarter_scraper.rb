require "nokogiri"
require "pry"

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)

  projects = {}

  #Iterate through projects
  kickstarter.css("li.project.grid_4").each do |project|
    projects[project] = {}
  end

  #return projects hash
  projects
end

create_project_hash
# projects: kickstarter.css("li.project.grid_4")
# project.css("h2.bbcard_name strong a").text
# project.css("div.project-thumbnail a img").attribute("src").value
# project.css("p.bbcard_blurb").text
# project.css("li.first funded strong").text
# location: project.css("ul.project-meta span.location-name").text
# percent_funded: project.css("ul.project-stats li.first.funded strong").text.gsub("%","").to_i
