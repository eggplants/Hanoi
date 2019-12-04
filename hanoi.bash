#!/bin/bash

function hanoi(){
  [[ "${1}" -gt 1 ]] && hanoi "$((${1} - 1))" "${2}" "${4}" "${3}"
  echo "${2}=>${3}"
  [[ "${1}" -gt 1 ]] && hanoi "$((${1} - 1))" "${4}" "${3}" "${2}"
}

read -r n
hanoi "${n}" a b c
