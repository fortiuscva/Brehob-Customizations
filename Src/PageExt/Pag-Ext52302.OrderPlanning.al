pageextension 52302 "BHB Order Planning" extends "Order Planning"
{
    actions
    {
        addafter("Refresh &Planning Line")
        {
            action("BHB Delete Lines")
            {
                ApplicationArea = all;
                Caption = 'Delete Batch Records';
                Image = Delete;
                trigger OnAction()
                var
                    ReqLineRecLcl: Record "Requisition Line";
                begin
                    if not Confirm('Do you want to delete lines in the current batch?', false) then
                        Error('');

                    ReqLineRecLcl.Reset();
                    ReqLineRecLcl.SetRange("Worksheet Template Name", Rec."Worksheet Template Name");
                    ReqLineRecLcl.SetRange("Journal Batch Name", Rec."Journal Batch Name");
                    ReqLineRecLcl.DeleteAll(true);
                end;
            }
        }
        addafter("Refresh &Planning Line_Promoted")
        {
            actionref(DeleteBatchRecords_Promoted; "BHB Delete Lines")
            {

            }
        }
    }
}
