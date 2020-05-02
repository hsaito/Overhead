---
external help file: Overhead-help.xml
Module Name: Overhead
online version:
schema: 2.0.0
---

# Get-TimeCardDailyHours

## SYNOPSIS
Generates hour counts per day.

## SYNTAX

```
Get-TimeCardDailyHours [-Tasks] <PSObject> [<CommonParameters>]
```

## DESCRIPTION
The `Get-TimeCardDailyHours` cmdlets generates total hours per day based on the time card information provided.

## EXAMPLES

### Example 1: Generate total hours per day from the time card information
```powershell
$data = Import-TimeCardActivity -File timecard.csv
Get-TimeCardDailyHours $data
```

The above generates total hours per day from the time card information provided by the timecard.csv file.

## PARAMETERS

### -Tasks
Time card information imported and tallied by `Import-TimeCardActivity` or `Get-TimeCardActivity`.

```yaml
Type: PSObject
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.Management.Automation.PSObject
## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
