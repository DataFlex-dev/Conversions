Use Windows.pkg
Use DFClient.pkg

Use cPowerHandler.pkg

Deferred_View Activate_oPowerHandlerView for ;
Object oPowerHandlerView is a dbView
    Set Size to 51 262
    Set Location to 2 2
    Set Label to "cPowerHandler Demo"
    
    Object oPowerHandler is a cPowerHandler
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
            Send Combo_Add_Item "BTUPerMinuteToFootPoundsPerSecond"
            Send Combo_Add_Item "BTUPerMinuteToCaloriesPerMinute"
            Send Combo_Add_Item "BTUPerSecondToHorsePower"
            Send Combo_Add_Item "BTUPerSecondToWatts"
            Send Combo_Add_Item "HorsePowerToFootPoundsPerMinute"
            Send Combo_Add_Item "HorsePowerToFootPoundsPerSecond"
            Send Combo_Add_Item "HorsePowerToKilogramMetersPerSecond"
            Send Combo_Add_Item "HorsePowerToMetricHorsePower"
            Send Combo_Add_Item "HorsePowerToBTUPerSecond"
            Send Combo_Add_Item "HorsePowerToBTUPerHour"
            Send Combo_Add_Item "HorsePowerToWatts"
            Send Combo_Add_Item "KilowattsToBTUPerSecond"
            Send Combo_Add_Item "KilowattsToFootPoundsPerSecond"
            Send Combo_Add_Item "KilowattsToKilogramCaloriesPerSecond"
            Send Combo_Add_Item "KilowattsToHorsePower"
            Send Combo_Add_Item "KilowattsToBTUPerHour"
        End_Procedure

        Procedure OnChange
            String sFunction
            Decimal decInput decOutput

            Get Value to sFunction
            Get Value of oInputForm to decInput
            Case Begin
                Case (sFunction = "BTUPerMinuteToFootPoundsPerSecond")
                    Get BTUPerMinuteToFootPoundsPerSecond of oPowerHandler decInput to decOutput
                    Case Break
                Case (sFunction = "BTUPerMinuteToCaloriesPerMinute")
                    Get BTUPerMinuteToCaloriesPerMinute of oPowerHandler decInput to decOutput
                    Case Break
                Case (sFunction = "BTUPerSecondToHorsePower")
                    Get BTUPerSecondToHorsePower of oPowerHandler decInput to decOutput
                    Case Break
                Case (sFunction = "BTUPerSecondToWatts")
                    Get BTUPerSecondToWatts of oPowerHandler decInput to decOutput
                    Case Break
                Case (sFunction = "HorsePowerToFootPoundsPerMinute")
                    Get HorsePowerToFootPoundsPerMinute of oPowerHandler decInput to decOutput
                    Case Break
                Case (sFunction = "HorsePowerToFootPoundsPerSecond")
                    Get HorsePowerToFootPoundsPerSecond of oPowerHandler decInput to decOutput
                    Case Break
                Case (sFunction = "HorsePowerToKilogramMetersPerSecond")
                    Get HorsePowerToKilogramMetersPerSecond of oPowerHandler decInput to decOutput
                    Case Break
                Case (sFunction = "HorsePowerToMetricHorsePower")
                    Get HorsePowerToMetricHorsePower of oPowerHandler decInput to decOutput
                    Case Break
                Case (sFunction = "HorsePowerToBTUPerSecond")
                    Get HorsePowerToBTUPerSecond of oPowerHandler decInput to decOutput
                    Case Break
                Case (sFunction = "HorsePowerToBTUPerHour")
                    Get HorsePowerToBTUPerHour of oPowerHandler decInput to decOutput
                    Case Break
                Case (sFunction = "HorsePowerToWatts")
                    Get HorsePowerToWatts of oPowerHandler decInput to decOutput
                    Case Break
                Case (sFunction = "KilowattsToBTUPerSecond")
                    Get KilowattsToBTUPerSecond of oPowerHandler decInput to decOutput
                    Case Break
                Case (sFunction = "KilowattsToFootPoundsPerSecond")
                    Get KilowattsToFootPoundsPerSecond of oPowerHandler decInput to decOutput
                    Case Break
                Case (sFunction = "KilowattsToKilogramCaloriesPerSecond")
                    Get KilowattsToKilogramCaloriesPerSecond of oPowerHandler decInput to decOutput
                    Case Break
                Case (sFunction = "KilowattsToHorsePower")
                    Get KilowattsToHorsePower of oPowerHandler decInput to decOutput
                    Case Break
                Case (sFunction = "KilowattsToBTUPerHour")
                    Get KilowattsToBTUPerHour of oPowerHandler decInput to decOutput
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
