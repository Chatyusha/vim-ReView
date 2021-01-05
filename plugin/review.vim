if exists('g:loaded_vimreview')
  finish
endif
let g:loaded_vimreview = 1

command! -nargs=0 SetReview call review#Setreview()
