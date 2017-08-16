IMAGE_NAME = "zenspider/alpine-ruby"
TAG_NAME   = "2.4.1"

task :image do
  sh "docker build --rm -t #{IMAGE_NAME}:#{TAG_NAME} ."
end

task :push do
  sh "docker push #{IMAGE_NAME}:#{TAG_NAME}"
end
