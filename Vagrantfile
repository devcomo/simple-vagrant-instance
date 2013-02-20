
Vagrant::Config.run do |config|
  config.vm.box = 'precise32'
  config.vm.box_url = 'http://files.vagrantup.com/precise32.box'
  config.vm.host_name = "simple"
  config.vm.network :hostonly, "192.168.50.4"

  config.vm.forward_port 80, 4567
  config.vm.share_folder "www", "/var/www/", "."

  config.vm.provision :puppet do |puppet|
     puppet.manifests_path = "manifests"
     puppet.manifest_file  = "base.pp"
  end
end
