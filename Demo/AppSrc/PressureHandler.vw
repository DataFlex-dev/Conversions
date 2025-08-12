Use Windows.pkg
Use DFClient.pkg

Use cPressureHandler.pkg

Deferred_View Activate_oPressureHandlerView for ;
Object oPressureHandlerView is a dbView
    Set Size to 51 262
    Set Location to 2 2
    Set Label to "cPressureHandler Demo"
    
    Object oPressureHandler is a cPressureHandler
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
            Send Combo_Add_Item "AtmospheresToPoundsPerSquareInch"
            Send Combo_Add_Item "AtmospheresToInchesWater"
            Send Combo_Add_Item "AtmospheresToKilogramsPerSquareCentimeter"
            Send Combo_Add_Item "GramsPerSquareCentimeterToPoundsPerSquareInch"
            Send Combo_Add_Item "InchesOfMercuryToFeetOfWater"
            Send Combo_Add_Item "InchesOfMercuryToPoundsPerSquareInch"
            Send Combo_Add_Item "InchesOfWaterToInchesOfMercury"
            Send Combo_Add_Item "InchesOfWaterToPoundsPerSquareFoot"
            Send Combo_Add_Item "InchesOfWaterToPoundsPerSquareInch"
            Send Combo_Add_Item "InchesOfWaterToOuncesPerSquareInch"
            Send Combo_Add_Item "KilogramsPerSquareCentimeterToAtmospheres"
            Send Combo_Add_Item "KilogramsPerSquareCentimeterToPoundsPerSquareInch"
            Send Combo_Add_Item "PoundsPerSquareInchToAtmospheres"
            Send Combo_Add_Item "PoundsPerSquareInchToInchesOfMercury"
            Send Combo_Add_Item "PoundsPerSquareInchToFeetOfWater"
            Send Combo_Add_Item "PoundsPerSquareInchToInchesOfWater"
            Send Combo_Add_Item "PoundsPerSquareInchToKilogramsPerSquareCentimeter"
        End_Procedure

        Procedure OnChange
            String sFunction
            Decimal decInput decOutput

            Get Value to sFunction
            Get Value of oInputForm to decInput
            Case Begin
                Case (sFunction = "AtmospheresToPoundsPerSquareInch")
                    Get AtmospheresToPoundsPerSquareInch of oPressureHandler decInput to decOutput
                    Case Break
                Case (sFunction = "AtmospheresToInchesWater")
                    Get AtmospheresToInchesWater of oPressureHandler decInput to decOutput
                    Case Break
                Case (sFunction = "AtmospheresToKilogramsPerSquareCentimeter")
                    Get AtmospheresToKilogramsPerSquareCentimeter of oPressureHandler decInput to decOutput
                    Case Break
                Case (sFunction = "GramsPerSquareCentimeterToPoundsPerSquareInch")
                    Get GramsPerSquareCentimeterToPoundsPerSquareInch of oPressureHandler decInput to decOutput
                    Case Break
                Case (sFunction = "InchesOfMercuryToFeetOfWater")
                    Get InchesOfMercuryToFeetOfWater of oPressureHandler decInput to decOutput
                    Case Break
                Case (sFunction = "InchesOfMercuryToPoundsPerSquareInch")
                    Get InchesOfMercuryToPoundsPerSquareInch of oPressureHandler decInput to decOutput
                    Case Break
                Case (sFunction = "InchesOfWaterToInchesOfMercury")
                    Get InchesOfWaterToInchesOfMercury of oPressureHandler decInput to decOutput
                    Case Break
                Case (sFunction = "InchesOfWaterToPoundsPerSquareFoot")
                    Get InchesOfWaterToPoundsPerSquareFoot of oPressureHandler decInput to decOutput
                    Case Break
                Case (sFunction = "InchesOfWaterToPoundsPerSquareInch")
                    Get InchesOfWaterToPoundsPerSquareInch of oPressureHandler decInput to decOutput
                    Case Break
                Case (sFunction = "InchesOfWaterToOuncesPerSquareInch")
                    Get InchesOfWaterToOuncesPerSquareInch of oPressureHandler decInput to decOutput
                    Case Break
                Case (sFunction = "KilogramsPerSquareCentimeterToAtmospheres")
                    Get KilogramsPerSquareCentimeterToAtmospheres of oPressureHandler decInput to decOutput
                    Case Break
                Case (sFunction = "KilogramsPerSquareCentimeterToPoundsPerSquareInch")
                    Get KilogramsPerSquareCentimeterToPoundsPerSquareInch of oPressureHandler decInput to decOutput
                    Case Break
                Case (sFunction = "PoundsPerSquareInchToAtmospheres")
                    Get PoundsPerSquareInchToAtmospheres of oPressureHandler decInput to decOutput
                    Case Break
                Case (sFunction = "PoundsPerSquareInchToInchesOfMercury")
                    Get PoundsPerSquareInchToInchesOfMercury of oPressureHandler decInput to decOutput
                    Case Break
                Case (sFunction = "PoundsPerSquareInchToFeetOfWater")
                    Get PoundsPerSquareInchToFeetOfWater of oPressureHandler decInput to decOutput
                    Case Break
                Case (sFunction = "PoundsPerSquareInchToInchesOfWater")
                    Get PoundsPerSquareInchToInchesOfWater of oPressureHandler decInput to decOutput
                    Case Break
                Case (sFunction = "PoundsPerSquareInchToKilogramsPerSquareCentimeter")
                    Get PoundsPerSquareInchToKilogramsPerSquareCentimeter of oPressureHandler decInput to decOutput
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
