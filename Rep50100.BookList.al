report 50100 "Book List"
{
    Caption = 'Book List';
    DefaultLayout = RDLC;
    RDLCLayout = 'Rep50100.BookList.rdlc';
    ApplicationArea = All;
    UsageCategory = ReportsAndAnalysis;

    dataset
    {
        dataitem(SingleRowData; Integer)
        {
            DataItemTableView = sorting (Number) where (Number = const (1));
            column(COMPANYNAME; CompanyProperty.DisplayName()) { }
            column(ShowPageCount; ShowPageCount) { }
        }
        dataitem(Book; Book)
        {
            RequestFilterFields = "No.", Author;

            column(No_Book; "No.") { IncludeCaption = true; }
            column(Title_Book; Title) { IncludeCaption = true; }
            column(Author_Book; Author) { IncludeCaption = true; }
            column(PageCount_Book; "Page count") { IncludeCaption = true; }
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(Content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(ShowPageCount; ShowPageCount)
                    {
                        ApplicationArea = All;
                        Caption = 'Show Page Count';
                    }
                }
            }
        }
    }



    labels
    {
        TitleCaption = 'Book - List', Comment = 'Title shown in upper right corner of report header';
        PageCaption = 'Page {0} of {1}';
    }

    var
        ShowPageCount: Boolean;
}