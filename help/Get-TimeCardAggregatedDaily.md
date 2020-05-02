---
external help file: Overhead-help.xml
Module Name: Overhead
online version:
schema: 2.0.0
---

# Get-TimeCardAggregatedDaily

## SYNOPSIS
Aggregate the file timecard information to daily tally.

## SYNTAX

```
Get-TimeCardAggregatedDaily [-Tasks] <PSObject> [<CommonParameters>]
```

## DESCRIPTION
The `Get-TimeCardAggregatedDaily` cmdlet parses the time card data and provides the daily aggregation of the hours. 

## EXAMPLES

### Example 1: Generate daily aggregation from the time card imported from timecard.csv
```powershell
$data = Import-TimeCardActivity -File timecard.csv
Get-TimeCardAggregatedDaily $data
```

The above imports the time card information from the file timecard.csv, then aggregates the time card data for the daily report.

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
