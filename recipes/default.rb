#
# Cookbook Name:: rubies
# Recipe:: default
#
# Copyright (c) 2016 Jason Blalock, All Rights Reserved.

include_recipe 'apt::default'
include_recipe 'chruby_install::default'
include_recipe 'ruby_install::default'

node[:rubies][:list].each do |ruby|
  ruby_install_ruby ruby
end
