class base-software {

  pkgs = ['curl']

  package { "$pkg":
    ensure => latest
  }

}
