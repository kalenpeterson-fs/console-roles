# == Class: roles::pe_masterofmasters
#
class roles::pe_masterofmasters {
  include profiles::puppet::pe_infrastructure
  include profiles::puppet::pe_agent
  include profiles::puppet::pe_certificate_authority
  include profiles::puppet::pe_console
  include profiles::puppet::pe_master
  include profiles::puppet::pe_mcollective
  include profiles::puppet::pe_orchestrator
  include profiles::puppet::pe_puppetdb
}
