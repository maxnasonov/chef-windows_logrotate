# Added by ChefSpec
require 'chefspec'
require 'chefspec/berkshelf'

CACHE = Chef::Config[:file_cache_path]
VERSION = '0.0.0.18_20170228'.freeze

ChefSpec::Coverage.start!
