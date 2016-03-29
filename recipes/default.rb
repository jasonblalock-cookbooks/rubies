#
# Cookbook Name:: rubies
# Recipe:: default
#
# Copyright (c) 2016 Jason Blalock, All Rights Reserved.

include_recipe 'apt::default'
include_recipe 'build-essential'
include_recipe 'chruby_install'

node.default['ruby_install']['version'] = '0.6.0'
node.default['ruby_install']['checksum'] = '3cc90846ca972d88b601789af2ad9ed0a496447a13cb986a3d74a4de062af37d'
include_recipe 'ruby_install'

node[:rubies][:list].each do |ruby|
  ruby_install_ruby ruby
end
