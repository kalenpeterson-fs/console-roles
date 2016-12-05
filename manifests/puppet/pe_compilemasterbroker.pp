# == Class: roles::puppet::pe_compilemasterbroker
#
class roles::puppet::pe_compilemasterbroker {
  #include profiles::puppet::pe_activemq_broker
  include ::puppet_enterprise::profile::amq::broker

  #include profiles::puppet::pe_infrastructure
  include ::puppet_enterprise

  #include profiles::puppet::pe_agent
  include ::puppet_enterprise::profile::agent

  #include profiles::puppet::pe_master
  include ::puppet_enterprise::profile::master
  include ::puppet_enterprise::profile::master::mcollective
  include ::puppet_enterprise::profile::mcollective::peadmin
  include ::pe_repo
  include ::pe_repo::platform::el_7_x86_64

  #include profiles::puppet::pe_mcollective
  include ::puppet_enterprise::profile::mcollective::agent
}
