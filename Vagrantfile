# encoding: UTF-8

Vagrant.configure("2") do |config|
   config.vm.box = "spox/ubuntu-arm"
  
  config.vm.provider "vmware_desktop" do |v|
      v.vmx["memsize"] = "4096"
      v.vmx["numvcpus"] = "4"
  end
   
  config.vm.provision "shell", path: "install-java-mac-aarch64.sh"
  config.vm.provision "shell", run:"always", path:"start-services.sh", privileged:false
  config.vm.network "forwarded_port", guest: 8888, host: 7272
end
