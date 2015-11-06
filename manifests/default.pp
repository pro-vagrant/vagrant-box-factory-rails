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

$new_gems = [
    'rubysl-optparse',
    'jira-ruby',
]
rails::gems { $new_gems: }

class { nodejs: }

class { 'bundle_install':
    repo    => 'https://github.com/pro-vagrant/songs-app-rails.git',
    command => 'bundle update',
    require => Class['ruby', 'rails', 'nodejs']
}

package { 'mailutils': ensure => present }
package { 'mutt': ensure => present }

file { 'mailbox for vagrant user':
    ensure  => present,
    path    => '/var/mail/vagrant',
    content => '',
    owner   => 'vagrant',
    group   => 'mail',
}