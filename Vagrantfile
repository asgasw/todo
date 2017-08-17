Vagrant.configure(2) do |config|
  config.vm.box = 'bento/ubuntu-17.04'
  config.vm.network 'forwarded_port', guest: 3000, host: 3000
  config.vm.network 'private_network', ip: '192.168.33.10'
  config.vm.synced_folder '.', '/vagrant', type: 'nfs'

  config.vm.provider 'virtualbox' do |vb|
    vb.gui = false
    vb.memory = '1024'
    vb.customize ['modifyvm', :id, '--cableconnected1', 'on']
  end

  config.vm.provision :ansible_local do |ansible|
    ansible.playbook = 'ansible/provision.yml'
    ansible.inventory_path = 'ansible/inventory'
    ansible.limit = 'all'
    ansible.verbose = true
    ansible.install = true
  end
end
