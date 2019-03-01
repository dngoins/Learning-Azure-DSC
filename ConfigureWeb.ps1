
#we can pass in a computer name here
#param([string] $MachineName)

configuration ConfigureWeb
{
 #   param ($MachineName)

    # use the machinename passed in
   # node $MachineName
   node IsWebServer
    {
        #install the IIS Role
        WindowsFeature IIS
        {
            Ensure               = 'Present'
            Name                 = 'Web-Server'
            IncludeAllSubFeature = $true
        }

        WindowsFeature ASP
        {
            Ensure = 'Present'
            Name = 'Web-Asp-Net45'
        }

        WindowsFeature IISClientCertificateMappingAuthentication
        {
            Ensure ='Present'
            Name = 'Web-Cert-Auth'
        }
    }

    Node NotWebServer
    {
        WindowsFeature IIS
        {
            Ensure               = 'Absent'
            Name                 = 'Web-Server'
        }
    }

}