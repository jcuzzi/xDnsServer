<#PSScriptInfo

.VERSION 1.0.1

.GUID 372199ea-f1c8-47cd-aa86-90f1d91fc7b4

.AUTHOR DSC Community

.COMPANYNAME DSC Community

.COPYRIGHT DSC Community contributors. All rights reserved.

.TAGS DSCConfiguration

.LICENSEURI https://github.com/dsccommunity/xDnsServer/blob/master/LICENSE

.PROJECTURI https://github.com/dsccommunity/xDnsServer

.ICONURI https://dsccommunity.org/images/DSC_Logo_300p.png

.EXTERNALMODULEDEPENDENCIES 

.REQUIREDSCRIPTS

.EXTERNALSCRIPTDEPENDENCIES

.RELEASENOTES
Updated author, copyright notice, and URLs.

.PRIVATEDATA 2016-Datacenter,2016-Datacenter-Server-Core

#> 

#Requires -Module xDnsServer


<#
    .DESCRIPTION
        This configuration will set the DNS forwarders
#>

Configuration xDnsServerForwarder_set_config
{
    Import-DscResource -ModuleName 'xDnsServer'

    Node localhost
    {

        xDnsServerForwarder 'SetForwarders'
        {
            IsSingleInstance = 'Yes'
            IPAddresses      = @('192.168.0.10', '192.168.0.11')
            UseRootHint      = $false
        }
    }
}
