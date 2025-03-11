codeunit 52301 BrehobEventSubscribers
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Job Create-Invoice", OnBeforeModifySalesHeader, '', false, false)]
    local procedure "Job Create-Invoice_OnBeforeModifySalesHeader"(var SalesHeader: Record "Sales Header"; Job: Record Job; JobPlanningLine: Record "Job Planning Line")
    begin
        SalesHeader."Location Code" := Job."Location Code";
    end;

}
