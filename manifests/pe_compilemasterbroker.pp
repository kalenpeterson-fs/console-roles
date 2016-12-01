# == Class: roles::pe_compilemasterbroker
#
class roles::pe_compilemasterbroker {
  include profiles::pe_activemq_broker
  include profiles::pe_infrastructure
  include profiles::pe_agent
  include profiles::pe_master
  include profiles::pe_mcollective
}
