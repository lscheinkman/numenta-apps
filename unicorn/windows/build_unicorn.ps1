<#
# ----------------------------------------------------------------------
# Numenta Platform for Intelligent Computing (NuPIC)
# Copyright (C) 2016, Numenta, Inc.  Unless you have purchased from
# Numenta, Inc. a separate commercial license for this software code, the
# following terms and conditions apply:
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero Public License version 3 as
# published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the GNU Affero Public License for more details.
#
# You should have received a copy of the GNU Affero Public License
# along with this program.  If not, see http://www.gnu.org/licenses.
#
# http://numenta.org/licenses/
# ----------------------------------------------------------------------
# Script used to build windows version of Unicorn.
# Environment Variables:
#   1) CSC_LINK. See https://github.com/electron-userland/electron-builder/wiki/Code-Signing
#   2) CSC_KEY_PASSWORD. See https://github.com/electron-userland/electron-builder/wiki/Code-Signing
#   3) GA_TRACKING_ID. See https://analytics.google.com/analytics
#
# These variables may also be declared in a local file called 'build.properties'. For example:
# CSC_LINK=ABCDEFGabcdefg12345678
# CSC_KEY_PASSWORD=Password
# GA_TRACKING_ID=UA-99999999-9
#>
Write-Host "Configure WinRM"
winrm set winrm/config/winrs '@{MaxMemoryPerShellMB="2048"}'

Write-Host "Mount shared folder to 'x:' drive"
# Must match shared folder name in vagrant file
# See 'config.vm.synced_folder')
net use x: \\VBOXSVR\shared /PERSISTENT:YES

Write-Host "Get variables from '$PSScriptRoot\build.properties'"
if (Test-Path $PSScriptRoot\build.properties) {
  Select-String '^([^=]*)=(.*)$' $PSScriptRoot\build.properties | % {
    $name  = $_.Matches.Groups[1].Value
    $value = $_.Matches.Groups[2].Value
    Write-Host "Updating variable " $name
    Set-Item -Path Env:\$name -Value $value
  }
}

Write-Host "Build and package windows version"
pushd x:\
npm run build:win
popd
