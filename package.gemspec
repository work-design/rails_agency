Gem::Specification.new do |s|
  s.name = 'rails_agency'
  s.version = '0.0.1'
  s.authors = ['qinmingyuan']
  s.email = ['mingyuan0715@foxmail.com']
  s.homepage = 'https://github.com/work-design/rails_agency'
  s.summary = 'Summary of RailsAgency.'
  s.description = 'Description of RailsAgency.'
  s.license = 'MIT'

  s.files = Dir[
    '{app,config,db,lib}/**/*',
    'LICENSE',
    'Rakefile',
    'README.md'
  ]

  s.add_dependency 'rails_extend'
end
