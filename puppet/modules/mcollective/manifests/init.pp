#
class mcollective {
  package { 'mcollective':
    ensure => 'installed',
  } ->

  file { '/etc/mcollective/server.cfg':
    source => 'puppet:///modules/mcollective/server.cfg',
  } ~>

  service { 'mcollective':
    ensure => 'running',
  }

  package { 'mcollective-client':
    ensure => 'installed',
  } ->

  file { '/etc/mcollective/client.cfg':
    source => 'puppet:///modules/mcollective/client.cfg',
  }
}
