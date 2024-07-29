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
# Function: p6df::modules::alfred::external::brew()
#
#>
######################################################################
p6df::modules::alfred::external::brew() {

  p6df::modules::homebrew::cli::brew::install --cask alfred

  p6_return_void
}
