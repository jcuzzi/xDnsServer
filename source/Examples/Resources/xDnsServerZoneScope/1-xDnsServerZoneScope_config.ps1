<#PSScriptInfo

.VERSION 1.0.1

.GUID f4aceafc-6d40-4e4f-94bc-d3b0e1e1bcac

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
        This configuration will manage a DNS zone scope
#>

Configuration xDnsServerZoneScope_config
{
    Import-DscResource -ModuleName 'xDnsServer'

    xDnsServerZoneScope 'ZoneScope1'
    {
        Name     = 'contoso_NorthAmerica'
        ZoneName = 'contoso.com'
        Ensure   = 'Present'
    }
}
