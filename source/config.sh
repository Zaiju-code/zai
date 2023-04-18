#!/usr/bin/env bash
#
# This file will be sourced by 'run-livecd.bash'
#
# It is used to set up the required variables and settings 
# for the rest of the scripts to function.
#
# Boolean settings are just being tested against case insensitive 'true' like below:
# 
#### Bash:
## if [[ ${var,,} =~ ^true$ ]]; then
##     ~do something~
## fi
##
#### Fish:
## if string match -rqi '^true$' $var
##     ~do something~
## end
#
# So when changing the values you only have to consider if it is 'true' or 'anything but true'
#

# Print a lot of information
export ZAI_VERBOSE='true'

# What to set the hostname of the system to,
# no attempt is made to sanity check this
# so be careful with what you set it to
export ZAI_NAME='kito'

# The specific timezone the machine should use
export ZAI_TIME='Australia/Victoria'

# There are a few places where various errors
# can occur that, in theory, we should be able
# to continue past regardless. This will tell
# the script to attempt to continue 
# or immediately fail and exit
#
# Errors that are guaranteed to cause issues will
# cause the script to exit regardless of this setting
#
export ZAI_IGNOREFAIL='false'

# Should we create symlinks to ease testing inside a VM and any 
# other measures that would simplify the debug process inside a VM
export ZAI_VMDEGUB='true'

# Allow some lazy uses of 'sed' which could potentially be destructive
# it is disabled by default to prevent unintended behavior but can be
# turned on with this toggle if some edge case is causing issues
export ZAI_LAZYSED='false'

#############################################
## Pacman Settings ##########################

# Should we enable multilib support in pacman
export ZAI_PKG_MULTILIB='true'

# Should we use a local repo instead of trying to build packages locally
export ZAI_PKG_LOCALREPO='true'

# The amount of parallel downloads which should be used
export ZAI_PKG_PD='16'

# Patch pacman.conf to resolve an issue with powerpill
export ZAI_PKG_POWERPILL='true'

# Should we update the 'makepkg.conf' with some optimised values
export ZAI_PKG_OPTIMISE='true'

#############################################
## Block Device Settings ####################

# The block device to be formatted, for example if
# your hardrive is '/dev/sda' you would set this to 'sda'
export ZAI_BLK='nvme0n1'

# Some block devices (like NVMe drives) end with a number,
# to avoid confusion when interacting with these devices
# their partitions have a prefix to make them distinct
# 
# In simple terms, if your block device looks like
# /dev/nvme0n1 and your first partition on that device is
# /dev/nvme0n1p1 then you should set this to 'p'
# 
# Seting it to '' is supported if your block device
# dosen't use or need a partition prefix
export ZAI_BLK_PP='p'

# Should we encrypt the partitions
# WIP
export ZAI_BLK_CRYPT='true'

