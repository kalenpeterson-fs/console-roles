# == Class: roles::puppet::pe_testvm
#
class roles::puppet::pe_testvm {
  include ::puppet_enterprise
  include ::puppet_enterprise::profile::agent
  include ::puppet_enterprise::profile::mcollective::agent
  include profiles::puppet::pe_agent_log
}
