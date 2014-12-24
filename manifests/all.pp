# Include everything for kurko

class kurko::all {
  notice('Setting up kurko')

  include kurko::applications
  include kurko::dotfiles
  include kurko::preferences

}

