FROM ruby:latest

MAINTAINER "valeriaverboloz"
LABEL description="This is custom Docker Image for http_server app"

# Install git
RUN apt-get update
RUN apt-get install -y git

# Install bundler gem
RUN gem install bundler

# switch to non-privileged user
ENV HOME /home/appuser
RUN useradd --create-home --home-dir $HOME appuser
User appuser

# Set working directory
WORKDIR $HOME

# Clone from GitHub Repository
RUN cd $HOME
RUN git clone https://github.com/sawasy/http_server
RUN chown -R appuser:appuser http_server
RUN chmod 700 http_server/http_server.rb

# Run ruby app
CMD ["ruby", "/home/appuser/http_server/http_server.rb"]

# Expose Port for the Application 
EXPOSE 80
