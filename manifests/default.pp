include stdlib
include environment
include apt
include postfix

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

package { 'mailutils': ensure => present }

file { 'mailbox for vagrant user':
    ensure  => present,
    path    => '/var/mail/vagrant',
    content => '',
    owner   => 'vagrant',
    group   => 'mail',
}