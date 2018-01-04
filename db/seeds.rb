# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Project.create([{ title: 'TestProject', description: 'Description of test project',
                  image_url: 'hans-portrait-100.jpg', link_to_code: 'http://www.google.com',
                  link_to_site: 'http://aginsurance.be' }])
Technology.create([{ title: 'TestTechnology', description: 'Description of the technology', skills_level:'5' }])

ProjectTechnology.create([{ project_id: '1', technology_id: '1'}])