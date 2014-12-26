class kurko::all {
  notice('Setting up kurko')

  include chrome
  include imagemagick

  include kurko::dotfiles
  include kurko::development
  include kurko::osx
}
