#!/bin/bash
RESTORE='\033[0m'
RED='\033[00;31m'
GREEN='\033[00;32m'
YELLOW='\e[0;33m'
PROJECT='ronconi-libras-front'

function devhelp {
  echo -e "${RED}DEVELOPMENT ENVIRONMENT SETUP INSTRUCTIONS${RESTORE}"
  echo -e ""
  echo -e "${GREEN}devhelp${RESTORE}                    Show ${RED}helper${RESTORE}"
  echo -e ""
  echo -e "${GREEN}dkup${RESTORE}                       ${RED}Run docker containers${RESTORE}"
  echo -e ""
  echo -e "${GREEN}dkexec \"<command>\"${RESTORE}         ${RED}Run <command>${RESTORE} inside app container"
  echo -e ""
  echo -e "${GREEN}dkbash${RESTORE}                     ${RED}Open bash${RESTORE} inside app container"
  echo -e ""
  echo -e "${GREEN}dkdown${RESTORE}                     ${RED}Stop all containers${RESTORE}"
  echo -e ""
}

function dkup {
  rm_server_pid
  docker-compose up --build
  exitcode=$?
  return $exitcode
}

function dkdown {
  docker-compose down
  exitcode=$?
  return $exitcode
}

function dkexec {
  docker exec -it app $1
  exitcode=$?
  return $exitcode
}

function dkbash {
  docker exec -it app /bin/sh
  exitcode=$?
  return $exitcode
}

function rm_server_pid {
  sudo rm -rf tmp/pids/server.pid
}

# Help functions

function echo_red {
  echo -e "${RED}$1${RESTORE}";
}

function echo_green {
  echo -e "${GREEN}$1${RESTORE}";
}

function echo_yellow {
  echo -e "${YELLOW}$1${RESTORE}";
}

echo_green "Welcome to ${PROJECT} development setup"
echo_green "Follow the instructions bellow"
echo_red   "------------------------------------------------------------------------"
devhelp
