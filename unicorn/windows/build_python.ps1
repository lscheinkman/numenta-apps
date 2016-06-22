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
# Script used to build win32 version of Unicorn.
# Arguments:
#   1) nupic_version (i.e. "0.5.0")
#>
param (
    [string]$nupic_version = "0.5.0",
)
Write-Host "Configure WinRM"
winrm set winrm/config/winrs '@{MaxMemoryPerShellMB="2048"}'

Write-Host "Mount shared folder to 'x:' drive"
# Must match shared folder name in vagrant file
# See 'config.vm.synced_folder')
net use x: \\VBOXSVR\shared /PERSISTENT:YES

Write-Host "Build python and nupic"
pushd x:\scripts\Windows64
powershell.exe -ExecutionPolicy RemoteSigned .\simple_build_portable_python_with_nupic.ps1 -nupic_version=$nupic_version
popd
