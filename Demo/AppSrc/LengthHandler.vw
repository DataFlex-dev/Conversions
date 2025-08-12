Use Windows.pkg
Use DFClient.pkg

Use cLengthHandler.pkg

Deferred_View Activate_oLengthHandlerView for ;
Object oLengthHandlerView is a dbView
    Set Size to 51 262
    Set Location to 2 2
    Set Label to "cLengthHandler Demo"
    
    Object oLengthHandler is a cLengthHandler
    End_Object

    Object oInputForm is a Form
        Set Size to 13 100
        Set Location to 5 60
        Set Label to "Input:"
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to JMode_Right
        Set Form_Datatype to 8
    End_Object

    Object oFunctionComboForm is a ComboForm
        Set Size to 12 198
        Set Location to 20 60
        Set Label to "Select Function:"
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to JMode_Right
        Set Entry_State to False
        Set Combo_Sort_State to False

        Procedure Combo_Fill_List
            Send Combo_Add_Item "Select a Function"
            Send Combo_Add_Item "AcreFootToCubicMeters"
            Send Combo_Add_Item "CentimetersToInches"
            Send Combo_Add_Item "CentimetersToMillimeters"
            Send Combo_Add_Item "CubicFeetToCubicMeters"
            Send Combo_Add_Item "CubicKilometersToCubicMiles"
            Send Combo_Add_Item "CubicMetersPerSecondToCubicFeetPerSecond"
            Send Combo_Add_Item "CubicMetersPerSecondToGallonsPerMinute"
            Send Combo_Add_Item "CubicMetersToAcreFeet"
            Send Combo_Add_Item "CubicMetersToCubicFeet"
            Send Combo_Add_Item "CubicMetersToCubicYards"
            Send Combo_Add_Item "CubicMilesToCubicKilometers"
            Send Combo_Add_Item "FeetToInches"
            Send Combo_Add_Item "FeetToMeters"
            Send Combo_Add_Item "InchesToCentimeters"
            Send Combo_Add_Item "InchesToMillimeters"
            Send Combo_Add_Item "KilometersToMeters"
            Send Combo_Add_Item "KilometersToMiles"
            Send Combo_Add_Item "KilometersToNauticalMiles"
            Send Combo_Add_Item "MetersPerSecondToFeetPerSecond"
            Send Combo_Add_Item "MetersToCentimeters"
            Send Combo_Add_Item "MetersToFeet"
            Send Combo_Add_Item "MetersToInches"
            Send Combo_Add_Item "MetersToMillimeters"
            Send Combo_Add_Item "MetersToYards"
            Send Combo_Add_Item "MicroRadianToSecondOfArc"
            Send Combo_Add_Item "MilesToFeet"
            Send Combo_Add_Item "MilesToKilometers"
            Send Combo_Add_Item "MilesToMeters"
            Send Combo_Add_Item "MillimetersToInches"
            Send Combo_Add_Item "SquareKilometersToSquareMiles"
            Send Combo_Add_Item "SquareMetersToSquareAcres"
            Send Combo_Add_Item "SquareMetersToSquareFeet"
            Send Combo_Add_Item "SquareMetersToSquareYards"
            Send Combo_Add_Item "SquareMilesToSquareKilometers"
            Send Combo_Add_Item "SquareInchesToSquareCentimeters"
            Send Combo_Add_Item "SquareFeetToSquareMeters"
            Send Combo_Add_Item "YardsToCentimeters"
            Send Combo_Add_Item "YardToFeet"
            Send Combo_Add_Item "YardToMeters"
        End_Procedure

        Procedure OnChange
            String sFunction
            Decimal decInput decOutput

            Get Value to sFunction
            Get Value of oInputForm to decInput
            Case Begin
                Case (sFunction = "MillimetersToInches")
                    Get MillimetersToInches of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "CentimetersToMillimeters")
                    Get CentimetersToMillimeters of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "CentimetersToInches")
                    Get CentimetersToInches of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "MetersToMillimeters")
                    Get MetersToMillimeters of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "MetersToCentimeters")
                    Get MetersToCentimeters of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "MetersToFeet")
                    Get MetersToFeet of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "MetersToYards")
                    Get MetersToYards of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "MetersToInches")
                    Get MetersToInches of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "MetersPerSecondToFeetPerSecond")
                    Get MetersPerSecondToFeetPerSecond of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "SquareMetersToSquareFeet")
                    Get SquareMetersToSquareFeet of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "SquareMetersToSquareYards")
                    Get SquareMetersToSquareYards of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "SquareMetersToSquareAcres")
                    Get SquareMetersToSquareAcres of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "CubicMetersToCubicFeet")
                    Get CubicMetersToCubicFeet of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "CubicMetersToCubicYards")
                    Get CubicMetersToCubicYards of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "CubicMetersToAcreFeet")
                    Get CubicMetersToAcreFeet of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "CubicMetersPerSecondToCubicFeetPerSecond")
                    Get CubicMetersPerSecondToCubicFeetPerSecond of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "CubicMetersPerSecondToGallonsPerMinute")
                    Get CubicMetersPerSecondToGallonsPerMinute of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "KilometersToMeters")
                    Get KilometersToMeters of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "KilometersToMiles")
                    Get KilometersToMiles of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "KilometersToNauticalMiles")
                    Get KilometersToNauticalMiles of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "SquareKilometersToSquareMiles")
                    Get SquareKilometersToSquareMiles of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "CubicKilometersToCubicMiles")
                    Get CubicKilometersToCubicMiles of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "InchesToMillimeters")
                    Get InchesToMillimeters of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "InchesToCentimeters")
                    Get InchesToCentimeters of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "SquareInchesToSquareCentimeters")
                    Get SquareInchesToSquareCentimeters of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "FeetToInches")
                    Get FeetToInches of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "FeetToMeters")
                    Get FeetToMeters of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "SquareFeetToSquareMeters")
                    Get SquareFeetToSquareMeters of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "CubicFeetToCubicMeters")
                    Get CubicFeetToCubicMeters of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "AcreFootToCubicMeters")
                    Get AcreFootToCubicMeters of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "YardToFeet")
                    Get YardToFeet of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "YardToMeters")
                    Get YardToMeters of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "MilesToFeet")
                    Get MilesToFeet of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "MilesToMeters")
                    Get MilesToMeters of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "MilesToKilometers")
                    Get MilesToKilometers of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "SquareMilesToSquareKilometers")
                    Get SquareMilesToSquareKilometers of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "CubicMilesToCubicKilometers")
                    Get CubicMilesToCubicKilometers of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "MicroRadianToSecondOfArc")
                    Get MicroRadianToSecondOfArc of oLengthHandler decInput to decOutput
                    Case Break
                Case (sFunction = "YardsToCentimeters")
                    Get YardsToCentimeters of oLengthHandler decInput to decOutput
                    Case Break
            Case End
            
            Set Value of oOutputForm to decOutput
        End_Procedure
    End_Object

    Object oOutputForm is a Form
        Set Size to 13 100
        Set Location to 34 60
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to JMode_Right
        Set Label to "Output:"
        Set Form_Datatype to 8
    End_Object
Cd_End_Object
