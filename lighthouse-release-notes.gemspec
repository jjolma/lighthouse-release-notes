# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{lighthouse-release-notes}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jeff Jolma"]
  s.date = %q{2009-05-07}
  s.email = %q{jjolma@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README",
     "README.rdoc"
  ]
  s.files = [
    "README",
    "VERSION",
    "lib/lighthouse-release-notes.rb"             
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/jjolma/lighthouse-release-notes}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{TODO}
  s.test_files = [
    "test/lighthouse-release-notes_test.rb",
    "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
