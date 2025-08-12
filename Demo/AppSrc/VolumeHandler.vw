Use Windows.pkg
Use DFClient.pkg

Use cVolumeHandler.pkg

Deferred_View Activate_oVolumeHandlerView for ;
Object oVolumeHandlerView is a dbView
    Set Size to 51 262
    Set Location to 2 2
    Set Label to "cVolumeHandler Demo"

    Object oVolumeHandler is a cVolumeHandler
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
            Send Combo_Add_Item "USPetroleumBarrelsToUSGallons"
            Send Combo_Add_Item "USLiquidBarrelsToUSGallons"
            Send Combo_Add_Item "CubicCentimetersToLiters"
            Send Combo_Add_Item "CubicCentimetersToCubicInches"
            Send Combo_Add_Item "CubicMetersToCubicCentimeters"
            Send Combo_Add_Item "CubicMetersToCubicFeet"
            Send Combo_Add_Item "CubicMetersToUSLiquidGallons"
            Send Combo_Add_Item "CubicFeetToCubicCentimeters"
            Send Combo_Add_Item "CubicFeetToCubicInches"
            Send Combo_Add_Item "CubicFeetToCubicYards"
            Send Combo_Add_Item "CubicFeetToGallons"
            Send Combo_Add_Item "CubicFeetToLiters"
            Send Combo_Add_Item "ImperialGallonsToCubicInches"
            Send Combo_Add_Item "ImperialGallonsToUSGallons"
            Send Combo_Add_Item "ImperialGallonsToLiters"
            Send Combo_Add_Item "USLiquidGallonsToCubicInches"
            Send Combo_Add_Item "USLiquidGallonsToLiters"
            Send Combo_Add_Item "USLiquidGallonsToImperialGallons"
            Send Combo_Add_Item "USLiquidGallonsToFluidOunces"
            Send Combo_Add_Item "LitersToGallons"
            Send Combo_Add_Item "LitersToCubicFeet"
            Send Combo_Add_Item "LitersToQuarts"
            Send Combo_Add_Item "LitersToCubicInches"
            Send Combo_Add_Item "FluidOuncesToCubicCentimeters"
            Send Combo_Add_Item "FluidOuncesToCubicInches"
            Send Combo_Add_Item "PintsToLiters"
            Send Combo_Add_Item "USLiquidQuartsToCubicFeet"
            Send Combo_Add_Item "USLiquidQuartsToCubicInches"
            Send Combo_Add_Item "USLiquidQuartsToLiters"
        End_Procedure

        Procedure OnChange
            String sFunction
            Decimal decInput decOutput

            Get Value to sFunction
            Get Value of oInputForm to decInput
            Case Begin
                Case (sFunction = "USPetroleumBarrelsToUSGallons")
                    Get USPetroleumBarrelsToUSGallons of oVolumeHandler decInput to decOutput
                    Case Break
                Case (sFunction = "USLiquidBarrelsToUSGallons")
                    Get USLiquidBarrelsToUSGallons of oVolumeHandler decInput to decOutput
                    Case Break
                Case (sFunction = "CubicCentimetersToLiters")
                    Get CubicCentimetersToLiters of oVolumeHandler decInput to decOutput
                    Case Break
                Case (sFunction = "CubicCentimetersToCubicInches")
                    Get CubicCentimetersToCubicInches of oVolumeHandler decInput to decOutput
                    Case Break
                Case (sFunction = "CubicMetersToCubicCentimeters")
                    Get CubicMetersToCubicCentimeters of oVolumeHandler decInput to decOutput
                    Case Break
                Case (sFunction = "CubicMetersToCubicFeet")
                    Get CubicMetersToCubicFeet of oVolumeHandler decInput to decOutput
                    Case Break
                Case (sFunction = "CubicMetersToUSLiquidGallons")
                    Get CubicMetersToUSLiquidGallons of oVolumeHandler decInput to decOutput
                    Case Break
                Case (sFunction = "CubicFeetToCubicCentimeters")
                    Get CubicFeetToCubicCentimeters of oVolumeHandler decInput to decOutput
                    Case Break
                Case (sFunction = "CubicFeetToCubicInches")
                    Get CubicFeetToCubicInches of oVolumeHandler decInput to decOutput
                    Case Break
                Case (sFunction = "CubicFeetToCubicYards")
                    Get CubicFeetToCubicYards of oVolumeHandler decInput to decOutput
                    Case Break
                Case (sFunction = "CubicFeetToGallons")
                    Get CubicFeetToGallons of oVolumeHandler decInput to decOutput
                    Case Break
                Case (sFunction = "CubicFeetToLiters")
                    Get CubicFeetToLiters of oVolumeHandler decInput to decOutput
                    Case Break
                Case (sFunction = "ImperialGallonsToCubicInches")
                    Get ImperialGallonsToCubicInches of oVolumeHandler decInput to decOutput
                    Case Break
                Case (sFunction = "ImperialGallonsToUSGallons")
                    Get ImperialGallonsToUSGallons of oVolumeHandler decInput to decOutput
                    Case Break
                Case (sFunction = "ImperialGallonsToLiters")
                    Get ImperialGallonsToLiters of oVolumeHandler decInput to decOutput
                    Case Break
                Case (sFunction = "USLiquidGallonsToCubicInches")
                    Get USLiquidGallonsToCubicInches of oVolumeHandler decInput to decOutput
                    Case Break
                Case (sFunction = "USLiquidGallonsToLiters")
                    Get USLiquidGallonsToLiters of oVolumeHandler decInput to decOutput
                    Case Break
                Case (sFunction = "USLiquidGallonsToImperialGallons")
                    Get USLiquidGallonsToImperialGallons of oVolumeHandler decInput to decOutput
                    Case Break
                Case (sFunction = "USLiquidGallonsToFluidOunces")
                    Get USLiquidGallonsToFluidOunces of oVolumeHandler decInput to decOutput
                    Case Break
                Case (sFunction = "LitersToGallons")
                    Get LitersToGallons of oVolumeHandler decInput to decOutput
                    Case Break
                Case (sFunction = "LitersToCubicFeet")
                    Get LitersToCubicFeet of oVolumeHandler decInput to decOutput
                    Case Break
                Case (sFunction = "LitersToQuarts")
                    Get LitersToQuarts of oVolumeHandler decInput to decOutput
                    Case Break
                Case (sFunction = "LitersToCubicInches")
                    Get LitersToCubicInches of oVolumeHandler decInput to decOutput
                    Case Break
                Case (sFunction = "FluidOuncesToCubicCentimeters")
                    Get FluidOuncesToCubicCentimeters of oVolumeHandler decInput to decOutput
                    Case Break
                Case (sFunction = "FluidOuncesToCubicInches")
                    Get FluidOuncesToCubicInches of oVolumeHandler decInput to decOutput
                    Case Break
                Case (sFunction = "PintsToLiters")
                    Get PintsToLiters of oVolumeHandler decInput to decOutput
                    Case Break
                Case (sFunction = "USLiquidQuartsToCubicFeet")
                    Get USLiquidQuartsToCubicFeet of oVolumeHandler decInput to decOutput
                    Case Break
                Case (sFunction = "USLiquidQuartsToCubicInches")
                    Get USLiquidQuartsToCubicInches of oVolumeHandler decInput to decOutput
                    Case Break
                Case (sFunction = "USLiquidQuartsToLiters")
                    Get USLiquidQuartsToLiters of oVolumeHandler decInput to decOutput
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
