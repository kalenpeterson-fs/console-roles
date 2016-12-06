# == Class: roles::puppet::pe_masterofmasters
#
class roles::puppet::pe_masterofmasters {
  # PE Infrastructure
  include ::puppet_enterprise

  # PE Agent
  include ::puppet_enterprise::profile::agent

  # PE Certificate Authority
  include ::puppet_enterprise::profile::certificate_authority

  # PE Console
  include ::puppet_enterprise::profile::console
  include ::puppet_enterprise::license

  # PE Master
  include ::puppet_enterprise::profile::master
  include ::puppet_enterprise::profile::master::mcollective
  include ::puppet_enterprise::profile::mcollective::peadmin
  include ::pe_repo
  include ::pe_repo::platform::el_7_x86_64

  # PE MCollective
  include ::puppet_enterprise::profile::mcollective::agent

  # PE Orchestrator
  include ::puppet_enterprise::profile::orchestrator

  # PE PuppetDB
  include ::puppet_enterprise::profile::puppetdb

  # Manage regular backups of the MoM
  include ::profiles::puppet::pe_master_backup
}
