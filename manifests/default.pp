include stdlib
include environment
include apt

class { 'ubuntu':
    stage => setup;
}

include phpmyadmin::complete

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
