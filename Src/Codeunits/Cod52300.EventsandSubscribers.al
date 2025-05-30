codeunit 52300 "BHB Events and Subscribers"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Job Create-Invoice", OnBeforeModifySalesHeader, '', false, false)]
    local procedure "Job Create-Invoice_OnBeforeModifySalesHeader"(var SalesHeader: Record "Sales Header"; Job: Record Job; JobPlanningLine: Record "Job Planning Line")
    begin
        SalesHeader.Validate("Location Code", Job."Location Code");
        SalesHeader.Validate("Ship-to Code", Job."Ship-to Code");
        if SalesHeader."Ship-to Code" = '' then
            Functions.CopyCustomShipToAddressFieldsFromJobToInvoice(SalesHeader, Job);
    end;

    var
        Functions: Codeunit "BHB Functions";

}
