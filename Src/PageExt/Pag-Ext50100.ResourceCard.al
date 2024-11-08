pageextension 50100 "BHB Resource Card" extends "Resource Card"
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
