Configuration HyperVSrv
{
# Parameters
Param(
$MachineName,$WebsiteFilePath
        )
# A Configuration expects at least one Node
Node $MachineName
      {
       # Set DCM Settings for each Node 
       LocalConfigurationManager 
            { 
             RebootNodeIfNeeded = $True 
             ConfigurationMode = "ApplyAndAutoCorrect" 
             ConfigurationModeFrequencyMins = 15 
            } 
      #Install the Hyper-V Role 
       WindowsFeature HyperV 
             { 
             Ensure = "Present"  
             Name = "Hyper-V" 
              }  # ... Add more roles
         } #End of Node
} # End of Configuration

