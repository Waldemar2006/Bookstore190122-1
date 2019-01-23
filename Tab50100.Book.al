table 50100 "Book"
{
    Caption = 'Book';
    LookupPageId = "Book List";

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(2; Title; Text[50])
        {
            Caption = 'Title';
        }
        field(3; Author; Text[50])
        {
            Caption = 'Author';
        }
        field(4; Hardcover; Boolean)
        {
            Caption = 'Hardcover';
        }
        field(5; "Page Count"; Integer)
        {
            Caption = 'Page Count';
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", Title, Hardcover) { }
    }
}