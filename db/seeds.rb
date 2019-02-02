require 'csv'

programs = ['Kindergarten-First Grade', 'Second-Fourth Grade',
            'Fifth-Eighth Grade', 'HS Core Program',
            'HS Professional Training Program']

programs.each { |p| Program.find_or_create_by!(title: p, slug: p.parameterize) }

galleries = ['Classes', 'Gala', 'Shows', 'Summer Camp', 'Behind the Scenes',
             'Starving Artist Tour', 'Video Gallery']

galleries.each do |p|
  Gallery.find_or_create_by!(title: p, slug: p.parameterize)
end

CSV.foreach('db/faculty.csv') do |row|
  faculty = Faculty.find_or_create_by!({name: row[0], area: row[1], bio: row[2], image_path: row[3]})
end
