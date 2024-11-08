pageextension 52301 "BHB Employee Card" extends "Employee Card"
{
    layout
    {
        addlast(General)
        {
            field("BHB Hide from ExpandIT"; Rec."BHB Hide from ExpandIT")
            {
                Caption = 'Hide from ExpandIT';
                ApplicationArea = all;
            }
        }
    }
}
