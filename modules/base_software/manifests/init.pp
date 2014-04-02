class base_software {

  pkgs = ['curl']

  package { "$pkg":
    ensure => latest
  }

}
