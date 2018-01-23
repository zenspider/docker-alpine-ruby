IMAGE_NAME = "zenspider/alpine-ruby"
TAG_NAME   = "2.5.0.1"

task :image do
  sh "docker build --squash --rm -t #{IMAGE_NAME}:#{TAG_NAME} ."
end

task :push do
  sh "docker push #{IMAGE_NAME}:#{TAG_NAME}"
end

task :sh do
  sh %(docker run --rm -i -t #{IMAGE_NAME}:#{TAG_NAME} /bin/sh)
end

task :purge do
  sh "docker system prune -f"
end

task :purgeall => :purge do
  sh "docker system prune -f -a"
end
