class kurko::osx {
  notice('Setting up OS X preferences')

  include osx::dock::autohide
  include osx::keyboard::capslock_to_control
  include osx::global::tap_to_click
  include osx::global::enable_keyboard_control_access
  include osx::global::disable_autocorrect
  include osx::no_network_dsstores

  class { 'osx::dock::icon_size':
    size => 16
  }

  class { 'osx::dock::position':
    position => 'right'
  }
}
