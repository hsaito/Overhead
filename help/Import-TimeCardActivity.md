---
external help file: Overhead-help.xml
Module Name: Overhead
online version:
schema: 2.0.0
---

# Import-TimeCardActivity

## SYNOPSIS
Parses timecard CSV file to generate timecard data.

## SYNTAX

```
Import-TimeCardActivity [-File] <String> [<CommonParameters>]
```

## DESCRIPTION
The `Import-TimeCardActivity` cmdlet generates timecard data from a time card CSV format consisting of Name, Category, Date, Start, End data.

## EXAMPLES

### Example 1: Generates a time card data from timecard.csv file.
```powershell
PS C:\> Import-TimeCardActivity -File timecard.csv
```

The above generates a time card data out from the timecard.csv file.

## PARAMETERS

### -File
Name of the file to import.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None
## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
[Get-TimeCardActivity](Get-TimeCardActivity)