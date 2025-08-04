#!/usr/bin/env bash
# setting the locale, some users have issues with different locales, this forces the correct one
export LC_ALL=en_US.UTF-8

current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $current_dir/utils.sh

get_percent()
{
      cpuvalue=$(ps -A -o %cpu | awk -F. '{s+=$1} END {print s}')
      cpucores=$(sysctl -n hw.logicalcpu)
      cpuusage=$(( cpuvalue / cpucores ))
      percent="$cpuusage%"
      normalize_percent_len $percent
}

main() {
  echo " $(get_percent)"
  sleep 5
}

# run main driver
main
