#!/bin/bash

if systemctl --user is-active xsession.target &> /dev/null; then
  systemctl --user stop xsession.target
fi
