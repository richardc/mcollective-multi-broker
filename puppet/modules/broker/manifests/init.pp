#
class broker {
  package { 'java-1.8.0-openjdk-headless':
    ensure => 'installed',
  } ->

  package { 'activemq':
    ensure => 'installed',
  } ->

  file { '/etc/activemq/activemq.xml':
    source => "puppet:///modules/broker/mcollective/ext/activemq/examples/multi-broker/${::hostname}-activemq.xml",
  } ~>

  service { 'activemq':
    ensure => 'running',
  }
}
