load 'deploy' if respond_to?(:namespace)

set :application, "sin"
set :user, "ubuntu"
set :user_sudo, false

set :scm, :git
set :repository, "git://github.com/amitzur/sinatra-template.git"
set :deploy_via, :remote_cache
set :deploy_to, "/home/#{user}/webapps/production/#{application}"

set :ssh_options, { :keys => [File.join(ENV["HOME"], ".ssh", "amitzur.pem")] }

role :app, "ec2-176-34-76-86.eu-west-1.compute.amazonaws.com"
role :web, "ec2-176-34-76-86.eu-west-1.compute.amazonaws.com"
role :db, "ec2-176-34-76-86.eu-west-1.compute.amazonaws.com"

set :runner, user
set :admin_runner, user

set :rvm_ruby_string, '1.9.3@chibo'
require 'rvm/capistrano'

namespace :deploy do
	task :start, :roles => [:web, :app] do
		run "sudo service thin start"
	end

	task :stop, :roles => [:web, :app] do
		run "sudo service thin stop"
	end

	task :restart, :roles => [:web, :app] do
		run "sudo service thin restart"
	end

	task :update_thin, :roles => [:web, :app] do
		run "sudo cp #{deploy_to}/current/thin_production.yml /etc/thin/sin_thin_production.yml"
	end

	# This will make sure that Capistrano doesn't try to run rake:migrate (this is not a Rails project!)
  task :cold do
		deploy.update
		deploy.update_thin
	  deploy.restart
	end
end

