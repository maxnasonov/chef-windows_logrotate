if platform?('windows')
  windows_zipfile "unzip logrotatewin" do
    path Chef::Config[:file_cache_path]
    source node['windows_logrotate']['url']
    action :unzip
    not_if {::File.exists?("#{Chef::Config[:file_cache_path]}\\logrotateSetup.exe")}
    notifies :install, 'windows_package[logrotateSetup.exe]', :immediately
  end

  windows_package 'logrotateSetup.exe' do
    installer_type :custom
    options "/S /v\"/qn\" /v\"INSTALLDIR=#{node['windows_logrotate']['install_dir']}\""
    source "#{Chef::Config[:file_cache_path]}\\logrotateSetup.exe"
    action :nothing
  end
else
  Chef::Log.warn('LogRotate for Windows can only be installed on Windows platforms!')
end
