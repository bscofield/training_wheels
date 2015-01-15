lang = 'ruby'

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provider "virtualbox" do |v|
    v.name = "training_wheels"
  end

  config.vm.synced_folder "#{lang}/", "/lang"

  config.vm.network :forwarded_port, guest: 3000, host: 3000

  config.vm.provision "shell", path: "#{lang}/setup.sh"
end
