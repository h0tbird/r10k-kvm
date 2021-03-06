#------------------------------------------------------------------------------
# Stages:
#------------------------------------------------------------------------------

stage { 'pre':  before  => Stage['main'] }
stage { 'post': require => Stage['main'] }

#------------------------------------------------------------------------------
# Enable the Puppet 4 behavior today:
#------------------------------------------------------------------------------

Package { allow_virtual => true }

#------------------------------------------------------------------------------
# Node classifier:
#------------------------------------------------------------------------------

node /^([a-z]+)-\d+/ { include '::r_base', "::r_${1}" }
