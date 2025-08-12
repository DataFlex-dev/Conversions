Use Windows.pkg
Use DFClient.pkg

Use cAbsoluteViscosityHandler.pkg

Deferred_View Activate_oAbsoluteViscosityHandlerView for ;
Object oAbsoluteViscosityHandlerView is a dbView
    Set Size to 51 262
    Set Location to 2 2
    Set Label to "cAbsoluteViscosityHandler Demo"

    Object oAbsoluteViscosityHandler is a cAbsoluteViscosityHandler
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
            Send Combo_Add_Item "PoiseToGmCmPerSecond"
            Send Combo_Add_Item "PoiseToDyneSecondPerSquareCm"
            Send Combo_Add_Item "PoiseToCentiPoise"
            Send Combo_Add_Item "CentiPoiseToLbPerFeetSecond"
            Send Combo_Add_Item "CentiPoiseToLbSecondPerSquareFeet"
            Send Combo_Add_Item "CentiPoiseToLbFeetPerHour"
        End_Procedure

        Procedure OnChange
            String sFunction
            Decimal decInput decOutput

            Get Value to sFunction
            Get Value of oInputForm to decInput
            Case Begin
                Case (sFunction = "PoiseToGmCmPerSecond")
                    Get PoiseToGmCmPerSecond of oAbsoluteViscosityHandler decInput to decOutput
                    Case Break
                Case (sFunction = "PoiseToDyneSecondPerSquareCm")
                    Get PoiseToDyneSecondPerSquareCm of oAbsoluteViscosityHandler decInput to decOutput
                    Case Break
                Case (sFunction = "PoiseToCentiPoise")
                    Get PoiseToCentiPoise of oAbsoluteViscosityHandler decInput to decOutput
                    Case Break
                Case (sFunction = "CentiPoiseToLbPerFeetSecond")
                    Get CentiPoiseToLbPerFeetSecond of oAbsoluteViscosityHandler decInput to decOutput
                    Case Break
                Case (sFunction = "CentiPoiseToLbSecondPerSquareFeet")
                    Get CentiPoiseToLbSecondPerSquareFeet of oAbsoluteViscosityHandler decInput to decOutput
                    Case Break
                Case (sFunction = "CentiPoiseToLbFeetPerHour")
                    Get CentiPoiseToLbFeetPerHour of oAbsoluteViscosityHandler decInput to decOutput
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
