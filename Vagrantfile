lang = 'haskell'

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provider "virtualbox" do |v|
    v.name = "training_wheels"
    v.memory = 4096
  end

  config.vm.synced_folder "#{lang}/", "/lang"

  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.network :forwarded_port, guest: 8000, host: 8000

  config.vm.provision "shell", inline: <<EOS
sudo apt-get -y update
sudo apt-get -y install wget build-essential redis-server
EOS

  config.vm.provision "shell", path: "#{lang}/setup.sh"
end
