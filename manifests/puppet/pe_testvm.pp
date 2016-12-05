# == Class: roles::puppet::pe_testvm
#
class roles::puppet::pe_testvm {
#include profiles::puppet::pe_infrastructure
  include ::puppet_enterprise

  #include profiles::puppet::pe_agent
  include ::puppet_enterprise::profile::agent

  #include profiles::puppet::pe_mcollective
  include ::puppet_enterprise::profile::mcollective::agent
}
