pageextension 52302 "BHB Order Planning" extends "Order Planning"
{
    actions
    {
        addafter("Refresh &Planning Line")
        {
            action("BHB Delete Batch Records")
            {
                ApplicationArea = all;
                Caption = 'Delete Batch Records';
                Image = Delete;
                trigger OnAction()
                var
                    ReqLineRecLcl: Record "Requisition Line";
                begin
                    if not Confirm('Do you want to proceed for records deletion?', false) then
                        Error('');

                    ReqLineRecLcl.Reset();
                    ReqLineRecLcl.SetRange("Worksheet Template Name", rec."Worksheet Template Name");
                    ReqLineRecLcl.SetRange("Journal Batch Name", rec."Journal Batch Name");
                    if ReqLineRecLcl.FindSet() then
                        ReqLineRecLcl.Delete(true);
                end;
            }
        }
        addafter("Refresh &Planning Line_Promoted")
        {
            actionref(DeleteBatchRecords_Promoted; "BHB Delete Batch Records")
            {

            }
        }
    }
}
