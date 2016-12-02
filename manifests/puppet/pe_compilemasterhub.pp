# == Class: roles::puppet::pe_compilemasterhub
#
class roles::puppet::pe_compilemasterhub {
  include profiles::puppet::pe_activemq_hub
  include profiles::puppet::pe_infrastructure
  include profiles::puppet::pe_agent
  include profiles::puppet::pe_master
  include profiles::puppet::pe_mcollective
}
