# Requires -RunAsAdministrator


# Check for Remote Server Administration Tools (RSAT)
Get-WindowsCapability -Name RSAT* -Online | Select-Object -Property DisplayName, State

# Basic Windows PowerShell Survey


Get-CimInstance Win32_NetworkLoginProfile | select Caption, UserId, UserType,  Privileges, Profile,  | ft


Get-CimInstance -ClassName Win32_Account | gm | select Name,LocalAccount,Domain,Caption,Status,InstallDate,SID | ft

# Get current user's domain


# 

$os = Get-CimInstance -ClassName Win32_operatingsystem

$os.Caption
$os.LastBootUpTime