# Commands that are too complex for an alias 
# (and perhaps too small for a stand-alone script) 
# can be defined in a function. Functions can take arguments, making them more powerful.

function ip() {
  iplocal="$(ipconfig getifaddr en0)"
  ipNet="$(dig +short myip.opendns.com @resolver1.opendns.com)"
  echo "local: ${iplocal}\nremote: ${ipNet}"
}

function manpdf() {
 #man -t "${1}" | open -f -a /Applications/Preview.app
 man -t "${1}" | open -f -a /System/Applications/Preview.app
}
