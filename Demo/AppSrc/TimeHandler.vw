Use Windows.pkg
Use DFClient.pkg

Use cTimeHandler.pkg

Deferred_View Activate_oTimeHandlerView for ;
Object oTimeHandlerView is a dbView
    Set Size to 51 262
    Set Location to 2 2
    Set Label to "cTimeHandler Demo"
    
    Object oTimeHandler is a cTimeHandler
    End_Object

    Object oInputForm is a Form
        Set Size to 13 100
        Set Location to 5 60
        Set Label to "Input:"
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to JMode_Right
        Set Form_Datatype to 0
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
            Send Combo_Add_Item "NanoToMicroSecond"
            Send Combo_Add_Item "NanoToMilliSecond"
            Send Combo_Add_Item "NanoToSecond"
            Send Combo_Add_Item "NanoSecondToMinute"
            Send Combo_Add_Item "NanoSecondToHour"
            Send Combo_Add_Item "NanoSecondToDay"
            Send Combo_Add_Item "NanoSecondToWeek"
            Send Combo_Add_Item "NanoSecondToFortnight"
        End_Procedure

        Procedure OnChange
            String sFunction
            UInteger uiOutput
            UBigInt ubiInput ubiOutput

            Get Value to sFunction
            Get Value of oInputForm to ubiInput
            Case Begin
                Case (sFunction = "NanoToMicroSecond")
                    Get NanoToMicroSecond of oTimeHandler ubiInput to ubiOutput
                    Set Value of oOutputForm to ubiOutput
                    Case Break
                Case (sFunction = "NanoToMilliSecond")
                    Get NanoToMilliSecond of oTimeHandler ubiInput to ubiOutput
                    Set Value of oOutputForm to ubiOutput
                    Case Break
                Case (sFunction = "NanoToSecond")
                    Get NanoToSecond of oTimeHandler ubiInput to uiOutput
                    Set Value of oOutputForm to uiOutput
                    Case Break
                Case (sFunction = "NanoSecondToMinute")
                    Get NanoSecondToMinute of oTimeHandler ubiInput to uiOutput
                    Set Value of oOutputForm to uiOutput
                    Case Break
                Case (sFunction = "NanoSecondToHour")
                    Get NanoSecondToHour of oTimeHandler ubiInput to uiOutput
                    Set Value of oOutputForm to uiOutput
                    Case Break
                Case (sFunction = "NanoSecondToDay")
                    Get NanoSecondToDay of oTimeHandler ubiInput to uiOutput
                    Set Value of oOutputForm to uiOutput
                    Case Break
                Case (sFunction = "NanoSecondToWeek")
                    Get NanoSecondToWeek of oTimeHandler ubiInput to uiOutput
                    Set Value of oOutputForm to uiOutput
                    Case Break
                Case (sFunction = "NanoSecondToFortnight")
                    Get NanoSecondToFortnight of oTimeHandler ubiInput to uiOutput
                    Set Value of oOutputForm to uiOutput
                    Case Break
            Case End
            
        End_Procedure
    End_Object

    Object oOutputForm is a Form
        Set Size to 13 100
        Set Location to 34 60
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to JMode_Right
        Set Label to "Output:"
        Set Form_Datatype to 0
    End_Object
Cd_End_Object
