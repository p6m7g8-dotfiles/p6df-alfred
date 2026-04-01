# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::alfred::deps()
#
#>
######################################################################
p6df::modules::alfred::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6common
    vitorgalvao/custom-alfred-iterm-scripts
  )
}

######################################################################
#<
#
# Function: p6df::modules::alfred::external::brews()
#
#>
######################################################################
p6df::modules::alfred::external::brews() {

  p6df::core::homebrew::cli::brew::install --cask alfred

  p6_return_void
}

######################################################################
#<
#
# Function: words alfred = p6df::modules::alfred::profile::mod()
#
#  Returns:
#	words - alfred
#
#  Environment:	 ALFRED_INSTALLED
#>
######################################################################
p6df::modules::alfred::profile::mod() {

  # shellcheck disable=SC2016
  p6_return_words 'alfred' "$ALFRED_INSTALLED"
}
