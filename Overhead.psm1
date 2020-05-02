
function Import-TimeCardActivity {
    Param(
        [Parameter(Position=0, Mandatory=$true)]
        [string] $File
    )

    $data = Import-Csv $File
    return Get-TimeCardActivityData($data)
}

function Get-TimeCardActivity {
    Param(
        [Parameter(Position=0, Mandatory=$true, ValueFromPipeline=$true)]
        [PSCustomObject] $Data
    )

    $talliedData = @()

    foreach ($item in $Data) {
        $normalized = [PSCustomObject]@{
            PSTypeName = "Overhead.TaskEntry"
            Name       = $item.Name
            Category   = $item.Category
            Date       = [DateTime] $item.Date
            StartTime  = [DateTime] $item.Start
            EndTime    = [DateTime] $item.End
            Duration   = [TimeSpan] ([DateTime] $item.End - [DateTime] $item.Start)
        }
    
        $talliedData += $normalized
    }
    return $talliedData
}

function Get-TimeCardAggregatedDaily {
    Param(
        [Parameter(Position=0, Mandatory=$true, ValueFromPipeline=$true)]
        [PSCustomObject] $Tasks
    )

    $result = @()

    foreach ($item in $Tasks) {
        $entry = $result | Where-Object { ($_.Name -eq $item.Name) -and ($_.Date -eq $item.Date) -and ($_.Category -eq $item.Category) }
        if ($null -ne $entry) {
            $entry.Duration += $item.Duration
        }
        else {
            $entryData = [PSCustomObject]@{
                PSTypeName = "Overhead.TaskAggregatedEntry"
                Name       = $item.Name
                Category   = $item.Category
                Date       = [DateTime] $item.Date
                Duration   = $item.Duration
            }  
            $result += $entryData                
        }
    }

    return $result
}

function Get-TimeCardDailyHours {
    Param(
        [Parameter(Position=0, Mandatory=$true, ValueFromPipeline=$true)]
        [PSCustomObject] $Tasks
    )

    $result = @()

    foreach ($item in $Tasks) {
        $entry = $result | Where-Object { ($_.Date -eq $item.Date) }
        if ($null -ne $entry) {
            $entry.Duration += $item.Duration
        }
        else {
            $entryData = [PSCustomObject]@{
                PSTypeName = "Overhead.DailyStat"
                Date       = [DateTime] $item.Date
                Duration   = $item.Duration
            }  
            $result += $entryData                
        }
    }

    return $result
}