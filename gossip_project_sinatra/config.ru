#appellent le bundler et permettent de lire le Gemfile (pas besoin de mettre les require 'gem')
require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'controller'
run ApplicationController