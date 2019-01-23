pageextension 50100 "Customer Card Extension" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Favorite Book No"; "Favorite Book No")
            {
                ApplicationArea = All;
            }
        }

        // addfirst(FactBoxes)
        // {
        //     part(BookDetailsFactbox;"Book Details Factbox")
        //     {
        //         Caption = 'Book Details';
        //         ApplicationArea = All;
        //         SubPageLink = "No." = field("Favorite Book No");
        //     }
        // }

        addbefore(Control149)
        {
            part(BookDetailsFactbox; "Book Details Factbox")
            {
                Caption = 'Book Details';
                ApplicationArea = All;
                SubPageLink = "No." = field ("Favorite Book No");
            }
        }
    }
}