#!/bin/bash

# profiles = xccdf_org.ssgproject.content_profile_ospp

. shared.sh

preauth_set=0
authfail_set=0
account_set=0
auth_files[0]="/etc/pam.d/system-auth"
auth_files[1]="/etc/pam.d/password-auth"
interval="900"

set_default_configuration
insert_or_remove_settings $preauth_set $authfail_set $account_set $interval ${auth_files[*]}
