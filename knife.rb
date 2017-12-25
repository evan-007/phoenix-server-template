local_mode true
chef_repo_path File.expand_path('../', __FILE__)
cookbook_path ["berks-cookbooks"]
knife[:use_sudo] = true
knife[:ssh_attribute] = "knife_zero.host"

knife[:editor] = "/usr/local/bin/vim"
knife[:before_bootstrap] = "berks vendor"
knife[:before_converge] = "berks vendor"
