stage{"pre": before => Stage["first"]}
stage{"first": before => Stage["main"]}
stage{"post": require => Stage["main"]}
# Stage Last should ONLY contain the l3-reboot-flag module
# Do NOT add any additional classes to this stage.
stage{"last": require => Stage["post"]}


### Global variables ###

#backup settings
File { backup => local }
# Default path
Exec { path => [ "/usr/local/sbin/", "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }

# Centralized backup filebucket
filebucket { local: path => "/var/lib/puppet/clientbucket" }

class base{
  include base-software
}
