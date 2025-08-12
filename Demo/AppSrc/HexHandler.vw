Use Windows.pkg
Use DFClient.pkg

Use cHexHandler.pkg

Deferred_View Activate_oHexHandlerView for ;
Object oHexHandlerView is a dbView
    Set Border_Style to Border_Thick
    Set Size to 55 300
    Set Location to 2 2
    Set Label to "cHexHandler"
    Set piMinSize to 53 160
    Set piMaxSize to 102 500

    Object oHexHandler is a cHexHandler
    End_Object

    Object oInputForm is a Form
        Set Size to 13 244
        Set Location to 5 50
        Set Label to "Input:"
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to JMode_Right
        Set peAnchors to anTopLeftRight
    End_Object

    Object oConvertToHexButton is a Button
        Set Location to 20 50
        Set Label to "To HEX"

        Procedure OnClick
            String sValue

            Get Value of oInputForm to sValue
            Get StrToHex of oHexHandler sValue to sValue
            Set Value of oOutputForm to sValue
        End_Procedure
    End_Object

    Object oSwapValuesButton is a Button
        Set Location to 20 138
        Set Label to "Swap Values"
    
        Procedure OnClick
            String sInputValue sOutputValue
            
            Get Value of oInputForm to sInputValue
            Get Value of oOutputForm to sOutputValue
            Set Value of oInputForm to sOutputValue
            Set Value of oOutputForm to sInputValue
        End_Procedure    
    End_Object

    Object oFromHexButton is a Button
        Set Location to 20 244
        Set Label to "From HEX"

        Procedure OnClick
            String sValue

            Get Value of oInputForm to sValue
            Get HexToStr of oHexHandler sValue to sValue
            Set Value of oOutputForm to sValue
        End_Procedure
    End_Object

    Object oOutputForm is a Form
        Set Size to 13 244
        Set Location to 36 50
        Set Label to "Output:"
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to JMode_Right
        Set peAnchors to anTopLeftRight
    End_Object
Cd_End_Object
