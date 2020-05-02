---
external help file: Overhead-help.xml
Module Name: Overhead
online version:
schema: 2.0.0
---

# Get-TimeCardActivityData

## SYNOPSIS
Process timecard data from the imported record information.

## SYNTAX

```
Get-TimeCardActivity [-Data] <PSObject> [<CommonParameters>]
```

## DESCRIPTION
The `Get-TimeCardActivity` cmdlet parses the data record to generate tallied data.

## EXAMPLES

### Example 1: Import and parse time card information
```powershell
$data = Import-Clixml timecard.xml
Get-TimeCardActivity $data
```

Above imports the timecard information from the XML file, parses the data.

## PARAMETERS

### -Data
Data to parse and process.

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
[Import-TimeCardActivity](Import-TimeCardActivity)