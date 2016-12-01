# == Class: roles::pe_compilemasterbroker
#
class roles::pe_compilemasterbroker {
  include profiles::pe_node
  include profiles::pe_compilemaster
  include profiles::pe_activemqbroker
}
