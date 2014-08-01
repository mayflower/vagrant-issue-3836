# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

nodes = Dir.glob(
    File.expand_path("manifests", __dir__) + '/*.pp'
).map { |node| File.basename(node, '.pp') }

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "hashicorp/precise64"

  nodes.each_with_index do |hostname, index|
    config.vm.define hostname do |node|
      node.vm.provision :puppet do |puppet|
        puppet.manifest_file = "#{hostname}.pp"
        puppet.manifests_path = "manifests"
      end
    end
  end
end
