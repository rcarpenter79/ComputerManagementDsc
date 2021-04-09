# Integration Test Config Template Version: 1.0.0
Configuration DSC_WindowsEventLog_Default
{
    Import-DscResource -ModuleName ComputerManagementDsc
    Node 'localhost'
    {
        WindowsEventLog Integration_Test
        {
            LogName            = 'Application'
            IsEnabled          = $true
            LogMode            = 'Circular'
            MaximumSizeInBytes = 2048kb
            LogFilePath        = '%SystemRoot%\System32\Winevt\Logs\Application.evtx'
            SecurityDescriptor = 'O:BAG:SYD:(A;;0xf0007;;;SY)(A;;0x7;;;BA)(A;;0x7;;;SO)(A;;0x3;;;IU)(A;;0x3;;;SU)(A;;0x3;;;S-1-5-3)(A;;0x3;;;S-1-5-33)(A;;0x1;;;S-1-5-32-573)'
        }
    }
}

Configuration DSC_WindowsEventLog_RetainSize
{
    Import-DscResource -ModuleName ComputerManagementDsc
    Node 'localhost'
    {
        WindowsEventLog Integration_Test
        {
            LogName            = 'Application'
            IsEnabled          = $true
            LogMode            = 'Retain'
            MaximumSizeInBytes = 4096kb
        }
    }
}

Configuration DSC_WindowsEventLog_AutobackupLogRetention
{
    Import-DscResource -ModuleName ComputerManagementDsc
    Node 'localhost'
    {
        WindowsEventLog Integration_Test
        {
            LogName          = 'Application'
            IsEnabled        = $true
            LogMode          = 'AutoBackup'
            LogRetentionDays = '30'
        }
    }
}

Configuration DSC_WindowsEventLog_CircularLogPath
{
    Import-DscResource -ModuleName ComputerManagementDsc
    Node 'localhost'
    {
        WindowsEventLog Integration_Test
        {
            LogName            = 'Application'
            IsEnabled          = $true
            LogMode            = 'Circular'
            MaximumSizeInBytes = 4096kb
            LogFilePath        = 'C:\temp\Application.evtx'
        }
    }
}

Configuration DSC_WindowsEventLog_EnableLog
{
    Import-DscResource -ModuleName ComputerManagementDsc
    Node 'localhost'
    {
        WindowsEventLog Integration_Test
        {
            LogName            = 'Microsoft-Windows-CAPI2/Operational'
            IsEnabled          = $true
            LogMode            = 'Circular'
            MaximumSizeInBytes = 1028kb
        }
    }
}

Configuration DSC_WindowsEventLog_DisableLog
{
    Import-DscResource -ModuleName ComputerManagementDsc
    Node 'localhost'
    {
        WindowsEventLog Integration_Test
        {
            LogName   = 'Microsoft-Windows-CAPI2/Operational'
            IsEnabled = $false
        }
    }
}

Configuration DSC_WindowsEventLog_CircularSecurityDescriptor
{
    Import-DscResource -ModuleName ComputerManagementDsc
    Node 'localhost'
    {
        WindowsEventLog Integration_Test
        {
            LogName            = 'Application'
            IsEnabled          = $true
            LogMode            = 'Circular'
            MaximumSizeInBytes = 2048kb
            SecurityDescriptor = 'O:BAG:SYD:(A;;0xf0007;;;SY)(A;;0x7;;;BA)(A;;0x3;;;BO)(A;;0x5;;;SO)(A;;0x1;;;IU)(A;;0x3;;;SU)(A;;0x1;;;S-1-5-3)(A;;0x2;;;S-1-5-33)(A;;0x1;;;S-1-5-32-573)'
        }
    }
}

Configuration DSC_WindowsEventLog_EnableBackupLog
{
    Import-DscResource -ModuleName ComputerManagementDsc
    Node 'localhost'
    {
        WindowsEventLog Integration_Test
        {
            LogName          = 'Microsoft-Windows-Backup'
            IsEnabled        = $true
            LogMode          = 'AutoBackup'
            LogRetentionDays = 30
        }
    }
}

Configuration DSC_WindowsEventLog_DisableBackupLog
{
    Import-DscResource -ModuleName ComputerManagementDsc
    Node 'localhost'
    {
        WindowsEventLog Integration_Test
        {
            LogName   = 'Microsoft-Windows-Backup'
            IsEnabled = $false
        }
    }
}

Configuration DSC_WindowsEventLog_CreateCustomResource
{
    Import-DscResource -ModuleName ComputerManagementDsc
    Node 'localhost'
    {
        WindowsEventLog Integration_Test
        {
            LogName               = 'Application'
            RegisteredSource      = 'MyCustomSource'
            CategoryResourceFile  = 'C:\Windows\System32\MCS.Category.dll'
            MessageResourceFile   = 'C:\Windows\System32\MCS.Message.dll'
            ParameterResourceFile = 'C:\Windows\System32\MCS.Parameter.dll'
        }
    }
}

Configuration DSC_WindowsEventLog_AppLogGuestsAllowed
{
    Import-DscResource -ModuleName ComputerManagementDsc
    Node 'localhost'
    {
        WindowsEventLog Integration_Test
        {
            LogName               = 'Application'
            RestrictGuestAccess   = $false
        }
    }
}

Configuration DSC_WindowsEventLog_AppLogGuestsProhibited
{
    Import-DscResource -ModuleName ComputerManagementDsc
    Node 'localhost'
    {
        WindowsEventLog Integration_Test
        {
            LogName               = 'Application'
            RestrictGuestAccess   = $true
        }
    }
}
