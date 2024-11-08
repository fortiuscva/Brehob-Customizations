report 50100 "BHB Delete Requisition Lines"
{
    ApplicationArea = All;
    Caption = 'Delete Requisition Lines';
    UsageCategory = ReportsAndAnalysis;
    ProcessingOnly = true;

    dataset
    {
        dataitem(RequisitionLine; "Requisition Line")
        {
            RequestFilterFields = "Journal Batch Name";
            trigger OnAfterGetRecord()
            begin
                Delete();
            end;

            trigger OnPostDataItem()
            begin
                Message('Process Completed.');
            end;
        }
    }
}
