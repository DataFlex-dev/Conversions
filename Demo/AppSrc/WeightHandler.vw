Use Windows.pkg
Use DFClient.pkg

Use cWeightHandler.pkg

Deferred_View Activate_oWeightHandlerView for ;
Object oWeightHandlerView is a dbView
    Set Size to 51 262
    Set Location to 2 2
    Set Label to "cWeightHandler Demo"
    
    Object oWeightHandler is a cWeightHandler
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
            Send Combo_Add_Item "OuncesToPounds"
            Send Combo_Add_Item "OuncesToGrams"
            Send Combo_Add_Item "OuncesToGrains"
            Send Combo_Add_Item "OuncesToKilograms"
            Send Combo_Add_Item "GramsToOunces"
            Send Combo_Add_Item "GramsToGrains"
            Send Combo_Add_Item "GramsToKilograms"
            Send Combo_Add_Item "CupsToOunces"
            Send Combo_Add_Item "CupsToTableSpoons"
            Send Combo_Add_Item "CupsToTeaSpoons"
            Send Combo_Add_Item "GallonsToCubicFeet"
            Send Combo_Add_Item "GallonsToCubicInches"
            Send Combo_Add_Item "GallonsToLiters"
            Send Combo_Add_Item "GallonsToPoundsOfWater"
            Send Combo_Add_Item "GallonsToOuncesOfWater"
            Send Combo_Add_Item "LitersToCubicMeters"
            Send Combo_Add_Item "LitersToQuarts"
            Send Combo_Add_Item "LitersToGallons"
            Send Combo_Add_Item "LitersToCubicFeet"
            Send Combo_Add_Item "PoundsToOunces"
            Send Combo_Add_Item "PoundsToKilograms"
            Send Combo_Add_Item "PoundsToGrains"
            Send Combo_Add_Item "PoundsToGrams"
            Send Combo_Add_Item "PoundsToTons"
            Send Combo_Add_Item "PoundsToPoundsTroy"
            Send Combo_Add_Item "QuartsToPints"
            Send Combo_Add_Item "QuartsToGallons"
            Send Combo_Add_Item "QuartsToLiters"
            Send Combo_Add_Item "QuartsToPoundsOfWater"
            Send Combo_Add_Item "FluidOuncesToOunces"
            Send Combo_Add_Item "OuncesToGramsDryWeight"
            Send Combo_Add_Item "GrainsToGrams"
            Send Combo_Add_Item "TonsToOunces"
            Send Combo_Add_Item "TonsToPounds"
            Send Combo_Add_Item "TonsToKilograms"
            Send Combo_Add_Item "KilogramsToOunces"
            Send Combo_Add_Item "KilogramsToPounds"
            Send Combo_Add_Item "KilogramsToGrams"
            Send Combo_Add_Item "KilogramsToMetricTons"
            Send Combo_Add_Item "MetricTonsToOunces"
            Send Combo_Add_Item "MetricTonsToPounds"
            Send Combo_Add_Item "MetricTonsToTons"
            Send Combo_Add_Item "MetricTonsToKilograms"
        End_Procedure

        Procedure OnChange
            String sFunction
            Decimal decInput decOutput

            Get Value to sFunction
            Get Value of oInputForm to decInput
            Case Begin
                Case (sFunction = "OuncesToPounds")
                    Get OuncesToPounds of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "OuncesToGrams")
                    Get OuncesToGrams of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "OuncesToGrains")
                    Get OuncesToGrains of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "OuncesToKilograms")
                    Get OuncesToKilograms of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "GramsToOunces")
                    Get GramsToOunces of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "GramsToGrains")
                    Get GramsToGrains of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "GramsToKilograms")
                    Get GramsToKilograms of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "CupsToOunces")
                    Get CupsToOunces of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "CupsToTableSpoons")
                    Get CupsToTableSpoons of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "CupsToTeaSpoons")
                    Get CupsToTeaSpoons of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "GallonsToCubicFeet")
                    Get GallonsToCubicFeet of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "GallonsToCubicInches")
                    Get GallonsToCubicInches of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "GallonsToLiters")
                    Get GallonsToLiters of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "GallonsToPoundsOfWater")
                    Get GallonsToPoundsOfWater of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "GallonsToOuncesOfWater")
                    Get GallonsToOuncesOfWater of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "LitersToCubicMeters")
                    Get LitersToCubicMeters of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "LitersToQuarts")
                    Get LitersToQuarts of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "LitersToGallons")
                    Get LitersToGallons of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "LitersToCubicFeet")
                    Get LitersToCubicFeet of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "PoundsToOunces")
                    Get PoundsToOunces of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "PoundsToKilograms")
                    Get PoundsToKilograms of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "PoundsToGrains")
                    Get PoundsToGrains of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "PoundsToGrams")
                    Get PoundsToGrams of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "PoundsToTons")
                    Get PoundsToTons of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "PoundsToPoundsTroy")
                    Get PoundsToPoundsTroy of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "QuartsToPints")
                    Get QuartsToPints of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "QuartsToGallons")
                    Get QuartsToGallons of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "QuartsToLiters")
                    Get QuartsToLiters of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "QuartsToPoundsOfWater")
                    Get QuartsToPoundsOfWater of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "FluidOuncesToOunces")
                    Get FluidOuncesToOunces of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "OuncesToGramsDryWeight")
                    Get OuncesToGramsDryWeight of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "GrainsToGrams")
                    Get GrainsToGrams of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "TonsToOunces")
                    Get TonsToOunces of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "TonsToPounds")
                    Get TonsToPounds of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "TonsToKilograms")
                    Get TonsToKilograms of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "KilogramsToOunces")
                    Get KilogramsToOunces of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "KilogramsToPounds")
                    Get KilogramsToPounds of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "KilogramsToGrams")
                    Get KilogramsToGrams of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "KilogramsToMetricTons")
                    Get KilogramsToMetricTons of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "MetricTonsToOunces")
                    Get MetricTonsToOunces of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "MetricTonsToPounds")
                    Get MetricTonsToPounds of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "MetricTonsToTons")
                    Get MetricTonsToTons of oWeightHandler decInput to decOutput
                    Case Break
                Case (sFunction = "MetricTonsToKilograms")
                    Get MetricTonsToKilograms of oWeightHandler decInput to decOutput
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
