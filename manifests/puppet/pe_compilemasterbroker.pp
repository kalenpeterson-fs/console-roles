# == Class: roles::puppet::pe_compilemasterbroker
#
class roles::puppet::pe_compilemasterbroker {
  # PE ActiveMq Broker
  include ::puppet_enterprise::profile::amq::broker

  # PE Infrastructure
  include ::puppet_enterprise

  # PE Agent
  include ::puppet_enterprise::profile::agent

  # PE Master
  include ::puppet_enterprise::profile::master
  include ::puppet_enterprise::profile::master::mcollective
  include ::puppet_enterprise::profile::mcollective::peadmin
  include ::pe_repo
  include ::pe_repo::platform::el_7_x86_64

  # PE Agent
  include ::puppet_enterprise::profile::mcollective::agent
}
