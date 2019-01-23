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
    }
}