Use Windows.pkg
Use DFClient.pkg

Use cOctHandler.pkg

Deferred_View Activate_oOctHandlerView for ;
Object oOctHandlerView is a dbView
    Set Border_Style to Border_Thick
    Set Size to 53 300
    Set Location to 2 2
    Set Label to "cOctHandler"
    Set piMinSize to 53 160
    Set piMaxSize to 53 500

    Object oOctHandler is a cOctHandler
    End_Object

    Object oInputForm is a Form
        Set Size to 13 244
        Set Location to 5 50
        Set Label to "Input:"
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to JMode_Right
        Set peAnchors to anTopLeftRight
        Set Form_Datatype to 0
    End_Object

    Object oConvertToOCTButton is a Button
        Set Location to 20 50
        Set Label to "To OCT"

        Procedure OnClick
            String sValue

            Get Value of oInputForm to sValue
            Get DecToOct of oOctHandler sValue to sValue
            Set Value of oOuputForm to sValue
        End_Procedure
    End_Object

    Object oFromOCTButton is a Button
        Set Location to 20 109
        Set Label to "From OCT"

        Procedure OnClick
            String sValue

            Get Value of oInputForm to sValue
            Get OctToDec of oOctHandler sValue to sValue
            Set Value of oOuputForm to sValue
        End_Procedure
    End_Object

    Object oOuputForm is a Form
        Set Size to 13 244
        Set Location to 36 50
        Set Label to "Output:"
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to JMode_Right
        Set peAnchors to anTopLeftRight
        Set Form_Datatype to Ascii_Window
    End_Object
Cd_End_Object
