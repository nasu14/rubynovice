require "bundler/gem_tasks"
require "rspec/core/rake_task"
require 'yard'

task :default do
  system 'rake -T'
end

desc "make documents by yard"
task :yard do
  files = Dir.entries('docs')
  files.each{|file|
    name=file.split('.')
    if name[1]=='hiki' then
      p command="hiki2md docs/#{name[0]}.hiki > rubynovice.wiki/#{name[0]}.md"
      system command
    end
  }
  system "cp rubynovice.wiki/README_ja.md README.md"
  system "cp rubynovice.wiki/README_ja.md rubynovice.wiki/Home.md"
  system "cp docs/*.gif rubynovice.wiki"
  system "cp docs/*.gif doc"
  YARD::Rake::YardocTask.new
end

desc "run spec for all members."
task :spec do
  p name=ARGV[1]
  if name!=nil then
    ENV['RUBYNOVICE_NAME']=name
    RSpec::Core::RakeTask.new(:spec)
  else
    p "specify directory name as \'rake spec hogehoge\'."
=begin
    escape = [".", "..", "rubynovice", "rubynovice.rb", "rubynovice.rb~"]
    p dirs=Dir.entries('lib')
    dirs.each{|dir|
      if !escape.include?(dir) then
        p name = dir
        ENV['RUBYNOVICE_NAME']=name
        test=RSpec::Core::RakeTask.new(:spec)
        test = nil
      end
    }
=end
  end
end

desc "submit your answers on github."
task :update =>[:setenv] do
  system 'emacs ./lib/rubynovice/version.rb'
  system 'git add -A'
  system 'git commit'
  system 'git push -u origin master'
#  system 'bundle exec rake release'
end

desc "setenv for release from Kwansei gakuin."
task :setenv do
  p command='setenv HTTP_PROXY http://proxy.ksc.kwansei.ac.jp:8080'
  system command
  p command='setenv HTTPS_PROXY http://proxy.ksc.kwansei.ac.jp:8080'
  system command
end
