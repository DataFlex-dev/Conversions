Use Windows.pkg
Use DFClient.pkg

Use cAngleHandler.pkg

Deferred_View Activate_oAngleHandlerView for ;
Object oAngleHandlerView is a dbView
    Set Size to 68 167
    Set Location to 2 2
    Set Label to "cAngleHandler Demo"

    Object oAngleHandler is a cAngleHandler
    End_Object

    Object oInputForm is a Form
        Set Size to 13 100
        Set Location to 5 60
        Set Label to "Input:"
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to JMode_Right
        Set Form_Datatype to 8
    End_Object

    Object oFromTypeComboForm is a ComboForm
        Set Size to 12 100
        Set Location to 20 60
        Set Label to "From Type:"
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to JMode_Right
        Set Entry_State to False
        Set Combo_Sort_State to False

        Procedure Combo_Fill_List
            Send Combo_Add_Item "Radian"
            Send Combo_Add_Item "Mil"
            Send Combo_Add_Item "Grad"
            Send Combo_Add_Item "Degree"
            Send Combo_Add_Item "Minute"
            Send Combo_Add_Item "Second"
            Send Combo_Add_Item "Point"
            Send Combo_Add_Item "16thCircle"
            Send Combo_Add_Item "10thCircle"
            Send Combo_Add_Item "8thCircle"
            Send Combo_Add_Item "6thCircle"
            Send Combo_Add_Item "4thCircle"
            Send Combo_Add_Item "HalfCircle"
            Send Combo_Add_Item "FullCircle"
        End_Procedure

        Procedure OnChange
            Send CalculateOutput
        End_Procedure
    End_Object

    Object oToTypeComboForm is a ComboForm
        Set Size to 13 100
        Set Location to 34 60
        Set Label to "To Type:"
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to JMode_Right
        Set Entry_State to False
        Set Combo_Sort_State to False

        Procedure Combo_Fill_List
            Send Combo_Add_Item "Radian"
            Send Combo_Add_Item "Mil"
            Send Combo_Add_Item "Grad"
            Send Combo_Add_Item "Degree"
            Send Combo_Add_Item "Minute"
            Send Combo_Add_Item "Second"
            Send Combo_Add_Item "Point"
            Send Combo_Add_Item "16thCircle"
            Send Combo_Add_Item "10thCircle"
            Send Combo_Add_Item "8thCircle"
            Send Combo_Add_Item "6thCircle"
            Send Combo_Add_Item "4thCircle"
            Send Combo_Add_Item "HalfCircle"
            Send Combo_Add_Item "FullCircle"
        End_Procedure

        Procedure OnChange
            Send CalculateOutput
        End_Procedure
    End_Object

    Procedure CalculateOutput
        String sFromType sToType
        Integer iFromType iToType
        Decimal decInput decOutput

        Get Value of oInputForm to decInput
        Get Value of oFromTypeComboForm to sFromType
        Get Combo_Item_Matching of oFromTypeComboForm sFromType to iFromType
        Get Value of oToTypeComboForm to sToType
        Get Combo_Item_Matching of oToTypeComboForm sToType to iToType

        Get ConvertAngle of oAngleHandler decInput iFromType iToType to decOutput

        Set Value of oOutputForm to decOutput
    End_Procedure

    Object oOutputForm is a Form
        Set Size to 13 100
        Set Location to 49 60
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to JMode_Right
        Set Label to "Output:"
        Set Form_Datatype to 8
    End_Object
Cd_End_Object
