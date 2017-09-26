require 'tinify'
require 'find'

# This is Pauls Key. Happy for usage unless you're converting literally hundreds of
# thousands of images :)

Tinify.key = ENV['TINY_PNG_KEY'] || "REPLACE_WITH_TINY_PNG_KEY"

image_dir = File.join('source')
image_file_paths = []

Find.find(image_dir) do |path|
  image_file_paths << path if (path =~ /.*\.png$/) || (path =~ /.*\.jpg$/)
end

image_file_paths.each do |file|
  build_path = file.gsub("source", "build")
  source = Tinify.from_file(file)
  source.to_file(build_path)
end