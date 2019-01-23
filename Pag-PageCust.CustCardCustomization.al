pagecustomization "CustCardCustomization" customizes "Customer Card"
{
    // layout
    // {
    //     modify("Location Code")
    //     {
    //         Visible = false;
    //     }
    // }

    actions
    {
        movebefore(NewSalesInvoice; NewSalesOrder)
    }
}