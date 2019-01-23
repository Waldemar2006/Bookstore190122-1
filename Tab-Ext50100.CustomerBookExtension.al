tableextension 50100 "Customer Book Extension" extends Customer
{
    fields
    {
        field(50100; "Favorite Book No"; Code[20])
        {
            Caption = 'Favorite Book No';
            TableRelation = Book;
        }
    }
}