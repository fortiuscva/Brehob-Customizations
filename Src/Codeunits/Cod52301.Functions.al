codeunit 52301 "BHB Functions"
{
    procedure CopyCustomShipToAddressFieldsFromJobToInvoice(var SalesHeader: Record "Sales Header"; Job: Record Job)
    var
        FormatAddress: Codeunit "Format Address";
    begin
        SalesHeader."Ship-to Name" := Job."Ship-to Name";
        SalesHeader."Ship-to Name 2" := Job."Ship-to Name 2";
        SalesHeader."Ship-to Address" := Job."Ship-to Address";
        SalesHeader."Ship-to Address 2" := Job."Ship-to Address 2";
        SalesHeader."Ship-to City" := Job."Ship-to City";
        SalesHeader."Ship-to Post Code" := Job."Ship-to Post Code";
        SalesHeader."Ship-to Country/Region Code" := Job."Ship-to Country/Region Code";
        SalesHeader."Ship-to Phone No." := Job."Ship-to Phone No.";
        SalesHeader."Ship-to Contact" := Job."Ship-to Contact";
        if FormatAddress.UseCounty(SalesHeader."Ship-to Country/Region Code") then
            SalesHeader."Ship-to County" := Job."Ship-to County";
    end;
}
