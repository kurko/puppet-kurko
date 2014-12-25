# Dotfiles for kurko

class kurko::dotfiles {
  notice('Setting up dotfiles for kurko')

  $home     = "/Users/${::boxen_user}"
  $src      = "${home}/www"
  $dotfiles = "${src}/.dotfiles"

  file { $dotfiles:
    ensure => directory
  }

  repository { $dotfiles:
    source  => 'kurko/.dotfiles',
    require => File[$dotfiles]
  }

  exec { 'installing dotfiles':
    command => "bash -c 'source ${dotfiles}/install'",
    cwd     => $dotfiles
  }

  exec { 'pull dotfiles master':
    command => 'git pull --rebase origin master',
    cwd     => $dotfiles
  }

  exec { 'defining ~/.gitignore':
    command => 'git config --global core.excludesfile "${home}/.gitignore"'
  }
}
