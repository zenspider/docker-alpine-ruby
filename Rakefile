IMAGE_NAME = "zenspider/alpine-ruby"
TAG_NAME   = "3.4.5"

task :build do
  sh "docker build --rm -t #{IMAGE_NAME}:#{TAG_NAME} ."
end

task :image do
  sh "docker build --squash --rm -t #{IMAGE_NAME}:#{TAG_NAME} ."
  sh "docker tag #{IMAGE_NAME}:#{TAG_NAME} #{IMAGE_NAME}:latest"
end

task :push => :image do
  sh "docker push #{IMAGE_NAME}:#{TAG_NAME}"
  sh "docker push #{IMAGE_NAME}:latest"
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
