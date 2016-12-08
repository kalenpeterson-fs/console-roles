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
  include ::profiles::puppet::pe_master_repos

  # PE Agent
  include ::puppet_enterprise::profile::mcollective::agent
}
