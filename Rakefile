begin
  require "bundler"
  Bundler.setup
rescue LoadError
  $stderr.puts "You need to have Bundler installed to be able build this gem."
end

### you need to install RubyGems latest build before running to execute this file
# 1. Go to (http://rubyforge.org/frs/?group_id=126) and download the latest 
#      build (.tgz, .zip, ..)

# 2. on debian based systems  
#      -> sudo apt-get update
#      -> sudo apt-get install ruby-full alien
#      -> cd (.tgz path)

# gem specifications (name, authors, version, etc..) and gem file creation process
gemspec = eval(File.read(Dir["*.gemspec"].first))

# p2pastie gem creation tasks

desc "Validate the gemspec"
task :gemspec do
  gemspec.validate
end

desc "Build gem locally"
task :build => :gemspec do
  system "gem build #{gemspec.name}.gemspec"
  FileUtils.mkdir_p "pkg"
  FileUtils.mv "#{gemspec.name}-#{gemspec.version}.gem", "pkg"
end

desc "Install gem locally"
task :install => :build do
  system "gem install pkg/#{gemspec.name}-#{gemspec.version}"
end

desc "Clean automatically generated files"
task :clean do
  FileUtils.rm_rf "pkg"
end
