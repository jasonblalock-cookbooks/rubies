#
# Cookbook Name:: rubies
# Recipe:: default
#
# Copyright (c) 2016 Jason Blalock, All Rights Reserved.

include_recipe 'apt::default'
include_recipe 'build-essential'
include_recipe 'chruby_install'
include_recipe 'ruby_install'

node[:rubies][:list].each do |ruby|
  ruby_install_ruby ruby
end
