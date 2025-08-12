Use Windows.pkg
Use DFClient.pkg

Use cBitHandler.pkg

Deferred_View Activate_oBitHandlerView for ;
Object oBitHandlerView is a dbView
    Set Size to 82 262
    Set Location to 2 2
    Set Label to "cBitHandler Demo"

    Object oBitHandler is a cBitHandler
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
            Send Combo_Add_Item "ConvertBits"
            Send Combo_Add_Item "ConvertBytes"
            Send Combo_Add_Item "ConvertBytesToBits"
            Send Combo_Add_Item "ConvertBitsToBytes"
        End_Procedure

        Procedure OnChange
            Send CalculateOutput
        End_Procedure
    End_Object

    Object oFromTypeComboForm is a ComboForm
        Set Size to 12 100
        Set Location to 34 60
        Set Label to "From Type:"
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to JMode_Right
        Set Entry_State to False
        Set Combo_Sort_State to False

        Procedure Combo_Fill_List
            Send Combo_Add_Item "Bit"
            Send Combo_Add_Item "KiloBit"
            Send Combo_Add_Item "MegaBit"
            Send Combo_Add_Item "GigaBit"
            Send Combo_Add_Item "TeraBit"
            Send Combo_Add_Item "PetaBit"
            Send Combo_Add_Item "ExaBit"
            Send Combo_Add_Item "ZettaBit"
            Send Combo_Add_Item "YottaBit"
            Send Combo_Add_Item "BrontoBit"
            Send Combo_Add_Item "GeopBit"

            Send Combo_Add_Item "Byte"
            Send Combo_Add_Item "KiloByte"
            Send Combo_Add_Item "MegaByte"
            Send Combo_Add_Item "GigaByte"
            Send Combo_Add_Item "TeraByte"
            Send Combo_Add_Item "PetaByte"
            Send Combo_Add_Item "ExaByte"
            Send Combo_Add_Item "ZettaByte"
            Send Combo_Add_Item "YottaByte"
            Send Combo_Add_Item "BrontoByte"
            Send Combo_Add_Item "GeopByte"
        End_Procedure

        Procedure OnChange
            Send CalculateOutput
        End_Procedure
    End_Object

    Object oToTypeComboForm is a ComboForm
        Set Size to 13 100
        Set Location to 48 60
        Set Label to "To Type:"
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to JMode_Right
        Set Entry_State to False
        Set Combo_Sort_State to False

        Procedure Combo_Fill_List
            Send Combo_Add_Item "Bit"
            Send Combo_Add_Item "KiloBit"
            Send Combo_Add_Item "MegaBit"
            Send Combo_Add_Item "GigaBit"
            Send Combo_Add_Item "TeraBit"
            Send Combo_Add_Item "PetaBit"
            Send Combo_Add_Item "ExaBit"
            Send Combo_Add_Item "ZettaBit"
            Send Combo_Add_Item "YottaBit"
            Send Combo_Add_Item "BrontoBit"
            Send Combo_Add_Item "GeopBit"

            Send Combo_Add_Item "Byte"
            Send Combo_Add_Item "KiloByte"
            Send Combo_Add_Item "MegaByte"
            Send Combo_Add_Item "GigaByte"
            Send Combo_Add_Item "TeraByte"
            Send Combo_Add_Item "PetaByte"
            Send Combo_Add_Item "ExaByte"
            Send Combo_Add_Item "ZettaByte"
            Send Combo_Add_Item "YottaByte"
            Send Combo_Add_Item "BrontoByte"
            Send Combo_Add_Item "GeopByte"
        End_Procedure

        Procedure OnChange
            Send CalculateOutput
        End_Procedure
    End_Object

    Procedure CalculateOutput
        String sFunction sFromType sToType
        Integer iFromType iToType iInput
        Real rOutput

        Get Value of oFunctionComboForm to sFunction
        Get Value of oInputForm to iInput
        Get Value of oFromTypeComboForm to sFromType
        Get Combo_Item_Matching of oFromTypeComboForm sFromType to iFromType
        Get Value of oToTypeComboForm to sToType
        Get Combo_Item_Matching of oToTypeComboForm sToType to iToType

        Case Begin
            Case (sFunction = "ConvertBits")
                Get ConvertBits of oBitHandler iInput iFromType iToType to rOutput
                Case Break
            Case (sFunction = "ConvertBytes")
                Get ConvertBytes of oBitHandler iInput iFromType iToType to rOutput
                Case Break
            Case (sFunction = "ConvertBytesToBits")
                Get ConvertBytesToBits of oBitHandler iInput iFromType iToType to rOutput
                Case Break
            Case (sFunction = "ConvertBitsToBytes")
                Get ConvertBitsToBytes of oBitHandler iInput iFromType iToType to rOutput
                Case Break
        Case End

        Set Value of oOutputForm to rOutput
    End_Procedure

    Object oOutputForm is a Form
        Set Size to 13 100
        Set Location to 63 60
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to JMode_Right
        Set Label to "Output:"
        Set Form_Datatype to 0
    End_Object
Cd_End_Object
