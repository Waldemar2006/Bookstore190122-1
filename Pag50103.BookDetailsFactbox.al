page 50103 "Book Details Factbox"
{
    Caption = 'Book Details Factbox';
    PageType = CardPart;
    SourceTable = Book;

    layout
    {
        area(Content)
        {
            field("No."; "No.")
            {
                ApplicationArea = All;
                DrillDown = true;

                trigger OnDrillDown()
                begin
                    ShowDetails();
                end;
            }
            field(Title; Title)
            {
                ApplicationArea = All;
            }
            field(Author; Author)
            {
                ApplicationArea = All;
            }
            field("No. of Customers"; "No. of Customers")
            {
                ApplicationArea = All;
            }
        }
    }

    local procedure ShowDetails()
    begin
        Page.Run(Page::"Book Card", Rec);
    end;
}