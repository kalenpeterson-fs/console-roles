# == Class: roles::puppet::pe_compilemasterhub
#
class roles::puppet::pe_compilemasterhub {
  # PE ActiveMq Hub
  include ::puppet_enterprise::profile::amq::hub

  # PE Infrastructure
  include ::puppet_enterprise

  # PE Agent
  include ::puppet_enterprise::profile::agent

  # PE Master
  include ::puppet_enterprise::profile::master
  include ::puppet_enterprise::profile::master::mcollective
  include ::puppet_enterprise::profile::mcollective::peadmin
  include ::profiles::puppet::pe_master_repos

  # PE MCOllective
  include ::puppet_enterprise::profile::mcollective::agent
}
