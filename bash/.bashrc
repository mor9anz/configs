#ctrl_z to fg
function overwrite_ctrl_z_fg {
    stty susp undef
    bind '"\C-z":"fg\015"'
}
function overwrite_ctrl_z_fg_undo {
    stty susp ^z
}
# don't put duplicate lines in the history. Lines starting with space are kept
#HISTCONTROL=ignoreboth #same as ignorespace:ignoredups
HISTCONTROL=ignoredups
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=20000
declare -a cowfile=('apt' 'beavis.zen' 'bong' 'bud-frogs' 'bunny' 'calvin' 'cheese' 'cock' 'cower' 'daemon' 'default
dragon' 'dragon-and-cow' 'duck' 'elephant' 'elephant-in-snake' 'eyes' 'flaming-sheep
ghostbusters' 'gnu' 'head-in' 'hellokitty' 'kiss' 'kitty' 'koala' 'kosh' 'luke-koala
mech-and-cow' 'meow' 'milk' 'moofasa' 'moose' 'mutilated' 'pony' 'pony-smaller' 'ren' 'sheep
skeleton' 'snowman' 'sodomized-sheep' 'stegosaurus' 'stimpy' 'suse' 'three-eyes' 'turkey
turtle' 'tux' 'unipony' 'unipony-smaller' 'vader' 'vader-koala' 'www');
len=${#cowfile[@]}
declare -a color=('1' '2' '3' '4' '5' '6' '7');
len_color=${#color[@]}
#index=$[$RANDOM%$len+1] this also works
index=$[RANDOM%len]
index_color=$[RANDOM%len_color]
index_color2=$[(RANDOM+1)%len_color]
(tput setaf ${color[$index_color]} && fortune && tput setaf ${color[$index_color2]} )| cowthink -y -f ${cowfile[$index]} ;tput sgr0 
alias objdump='objdump -M intel'
xset r rate 200 75

#Typing C-s searches forward through the history
#http://stackoverflow.com/a/791800
stty -ixon
