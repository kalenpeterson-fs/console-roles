# == Class: roles::pe_masterofmasters
#
class roles::pe_masterofmasters {
  include profiles::pe_node
  include profiles::pe_monolithicmaster
}
