default['windows_logrotate']['version'] = '0.0.0.18_20170228'
default['windows_logrotate']['md5'] = '97cf9e2f242a95b026d8d473bc93bf73'
default['windows_logrotate']['install_dir'] = "#{ENV['SYSTEMDRIVE']}\\logrotate"
default['windows_logrotate']['zip_filename'] = "logrotateSetup_#{node['windows_logrotate']['version']}.zip"
default['windows_logrotate']['url'] = 'https://pilotfiber.dl.sourceforge.net/project' \
    "/logrotatewin/#{node['windows_logrotate']['zip_filename']}"
