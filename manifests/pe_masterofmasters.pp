# == Class: roles::pe_masterofmasters
#
class roles::pe_masterofmasters {
  include profiles::pe_infrastructure
  include profiles::pe_agent
  include profiles::pe_certificate_authority
  include profiles::pe_console
  include profiles::pe_master
  include profiles::pe_mcollective
  include profiles::pe_orchestrator
  include profiles::pe_puppetdb
}
