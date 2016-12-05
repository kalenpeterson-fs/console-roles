# == Class: roles::puppet::pe_masterofmasters
#
class roles::puppet::pe_masterofmasters {
  #include profiles::puppet::pe_infrastructure
  include ::puppet_enterprise

  #include profiles::puppet::pe_agent
  include ::puppet_enterprise::profile::agent

  #include profiles::puppet::pe_certificate_authority
  include ::puppet_enterprise::profile::certificate_authority

  #include profiles::puppet::pe_console
  include ::puppet_enterprise::profile::console
  include ::puppet_enterprise::license

  #include profiles::puppet::pe_master
  include ::puppet_enterprise::profile::master
  include ::puppet_enterprise::profile::master::mcollective
  include ::puppet_enterprise::profile::mcollective::peadmin
  include ::pe_repo
  include ::pe_repo::platform::el_7_x86_64

  #include profiles::puppet::pe_mcollective
  include ::puppet_enterprise::profile::mcollective::agent

  #include profiles::puppet::pe_orchestrator
  include ::puppet_enterprise::profile::orchestrator

  #include profiles::puppet::pe_puppetdb
  include ::puppet_enterprise::profile::puppetdb
}
