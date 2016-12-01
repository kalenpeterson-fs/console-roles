# == Class: roles::pe_compilemasterhub
#
class roles::pe_compilemasterhub {
  include profiles::pe_node
  include profiles::pe_compilemaster
  include profiles::pe_activemqhub
}
