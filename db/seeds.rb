# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Project.create([{ title: 'AG Insurance corporate website', description: 'I was part of the team developed the first version of the
    AG Insurance corporate website in 2013. It is a SharePoint-based website that displays information on the different Insurance
    products the company sells. My main task on the project was to develop and test components and types of pages. I was 
    also responsible for the styling of the website (i.e. the CSS-code written).',
                  image_url: 'hans-portrait-100.jpg',
                  link_to_site: 'https://www.aginsurance.be/retail' }])
Technology.create([{ title: 'SharePoint 2010/2013', description: 'The majority of projects I have worked on in my 
    professional career have been based on SharePoint. During these projects I have also acquired a good understanding 
    of Database modeling and SQL, search crawling and indexing, designing document management systems and the broader
    concepts linked to web development, both for internal and public-facing websites.', skills_level:'4' }])

ProjectTechnology.create([{ project_id: '1', technology_id: '1'}])