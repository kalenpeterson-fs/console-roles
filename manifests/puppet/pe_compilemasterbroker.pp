# == Class: roles::pe_compilemasterbroker
#
class roles::pe_compilemasterbroker {
  include profiles::puppet::pe_activemq_broker
  include profiles::puppet::pe_infrastructure
  include profiles::puppet::pe_agent
  include profiles::puppet::pe_master
  include profiles::puppet::pe_mcollective
}
