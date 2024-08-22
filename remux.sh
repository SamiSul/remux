#! /usr/bin/env bash

set -euo pipefail

remux_state_file=~/.local/share/remux.txt

function tmux_session_exists() {
  local session_name=${1}
  return $(tmux has-session -t ${session_name} &> /dev/null && echo 0 || echo 1)
}

function tmux_window_exists() {
  local session_name="$1"
  local window_index="$2"

  if tmux list-windows -t "${session_name}" | grep -q "^${window_index}:"; then
    return 0
  else
    return 1
  fi
}

function tmux_pane_exists() {
  local session_name="$1"
  local window_index="$2"
  local pane_index="$3"

  if tmux list-panes -t "${session_name}:${window_index}" | grep -q "^${pane_index}:"; then
    return 0
  else
    return 1
  fi
}

function save() {
  local tmux_state=$(tmux lsp -aF '#{session_name}>#{window_index}>#{window_name}>#{window_layout}>#{pane_index}>#{pane_current_command}>#{pane_current_path}')

  mkdir -p $(dirname "${remux_state_file}")

  printf "${tmux_state}" > "${remux_state_file}"
}

function restore() {
  if [ ! -f "${remux_state_file}" ]; then
    echo "No remux save found"
    exit 1
  fi

  local remux_state=$(<"${remux_state_file}")

  if [ -z "${remux_state}" ]; then
    echo "No remux save found"
    exit 1
  fi

  while IFS= read -r line; do
    local session_name=$(echo "$line" | cut -d'>' -f1)
    local window_index=$(echo "$line" | cut -d'>' -f2)
    local window_name=$(echo "$line" | cut -d'>' -f3)
    local window_layout=$(echo "$line" | cut -d'>' -f4)
    local pane_index=$(echo "$line" | cut -d'>' -f5)
    local pane_command=$(echo "$line" | cut -d'>' -f6)
    local pane_path=$(echo "$line" | cut -d'>' -f7)

    if ! tmux_session_exists ${session_name}; then
      tmux new-session -d -s ${session_name}
    fi 

    if ! tmux_window_exists ${session_name} ${window_index}; then
      tmux new-window -d -t ${session_name}:${window_index} -n ${window_name}
    fi

    if ! tmux_pane_exists ${session_name} ${window_index} ${pane_index}; then
      tmux split-window -d -t ${session_name}:${window_index} -c ${pane_path} -l 1 -h
    fi
  done <<< "${remux_state}"
}

while getopts ":sr" opt; do
  case $opt in
    s)
      save
      ;;
    r)
      restore
      ;;
    *)
      echo "Invalid option: -$OPTARG" >&2
      ;;
  esac
done
