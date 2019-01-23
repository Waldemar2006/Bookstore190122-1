pagecustomization "CustListCustomization" customizes "Customer List"
{
    layout
    {
        modify("Location Code")
        {
            Visible = false;
        }
    }

    actions
    {
        movebefore(NewSalesInvoice; NewSalesOrder)
    }
}