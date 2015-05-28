class kurko::development {
  notice('Setting up development tools for kurko')

  include brewcask
  include vundle
  include iterm2::stable
  include phantomjs
  include imagemagick
  include fonts::adobe::sourcecodepro

  package {
    [ 'tmux',
      'the_silver_searcher',
      'ctags-exuberant'
    ]:
    ensure => present
  }

  notice('Run `brew cask install karabiner` manually')
  notice('For karabiner, use private.xml in Dropbox')
}
