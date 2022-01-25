page 50004 "HB Posted Nutrition Order"
{

    Caption = 'HB Könyvelt Táplálkozás';
    PageType = Document;
    SourceTable = "HB Posted Nutrition Header";
    Editable = false;

    layout
    {
        area(content)
        {
            group(General)
            {
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Státusz field.';
                    ApplicationArea = All;
                }
                field("Nutrition No."; Rec."Nutrition No.")
                {
                    ToolTip = 'Specifies the value of the Táplálkozási szám field.';
                    ApplicationArea = All;
                }
                field("Date"; Rec."Date")
                {
                    ToolTip = 'Specifies the value of the Dátum field.';
                    ApplicationArea = All;
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ToolTip = 'Specifies the value of the Vevő field.';
                    ApplicationArea = All;
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ToolTip = 'Specifies the value of the Vevő neve field.';
                    ApplicationArea = All;
                }
            }
            part(Lines; "HB Posted Nutrition Order Subp")
            {
                ApplicationArea = All;
                SubPageLink = "Nutrition No." = field("Nutrition No.");
            }
            field("Sum Protein"; Rec."Sum Protein")
            {
                ToolTip = 'Specifies the value of the Összes Fehérje field.';
                ApplicationArea = All;
            }
            field("Sum Fat"; Rec."Sum Fat")
            {
                ToolTip = 'Specifies the value of the Összes Zsír field.';
                ApplicationArea = All;
            }
            field("Sum Carbohydrate"; Rec."Sum Carbohydrate")
            {
                ToolTip = 'Specifies the value of the Összes Szénhidrát field.';
                ApplicationArea = All;
            }
            field("Sum KJ"; Rec."Sum KJ")
            {
                ToolTip = 'Specifies the value of the Összes KJ field.';
                ApplicationArea = All;
            }
            field("Sum Kcal"; Rec."Sum Kcal")
            {
                ToolTip = 'Specifies the value of the Összes Kcal field.';
                ApplicationArea = All;
            }
        }
        area(FactBoxes)
        {
            part(CustomerDetail; "Customer Details FactBox")
            {
                ApplicationArea = All;
                SubPageLink = "No." = field("Customer No.");
            }
        }
    }

}
