include stdlib
include environment
include apt
include php5


class { 'ubuntu':
    stage => setup;
}

package { 'libmysqlclient-dev': }

class { '::mysql::server':
    root_password    => "this-is-SECRET",
}

include ::apache::mod::rewrite

class { 'apache':
    mpm_module    => prefork,
    user          => "vagrant",
    group         => "vagrant",
    default_vhost => false,
    require       => Class['php5'];
}

class { '::apache::mod::php':
    path => "${::apache::params::lib_path}/libphp5.so",
}

include phpmyadmin
class {'phpmyadmin::vhost':
    require => Class['environment']
}

class { ruby: }

class { rails:
    require => Class['ruby']
}

class { nodejs: }

class { 'bundle_install':
    repo    => 'https://github.com/pro-vagrant/songs-app-rails.git',
    command => 'bundle update',
    require => Class['ruby', 'rails', 'nodejs']
}
