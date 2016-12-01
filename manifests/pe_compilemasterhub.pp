# == Class: roles::pe_compilemasterhub
#
class roles::pe_compilemasterhub {
  include profiles::pe_activemq_hub
  include profiles::pe_infrastructure
  include profiles::pe_agent
  include profiles::pe_master
  include profiles::pe_mcollective
}
