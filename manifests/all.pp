class kurko::all {
  notice('Setting up kurko')

  include chrome

  include kurko::dotfiles
  include kurko::development
  include kurko::osx
}
