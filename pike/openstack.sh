#!/bin/bash

: "${RC:=/app}"
: "${RCFILE:=openstack.rc}"

if [ -f "${RC}/${RCFILE}" ]; then
	source "${RC}/${RCFILE}"
fi

openstack $*