#!/bin/bash

if ! systemctl --user is-active xsession.target &> /dev/null; then
  systemctl --user import-environment DISPLAY XAUTHORITY
  systemctl --user start xsession.target
fi
