page 50002 "HB Nutrition Order List"
{

    ApplicationArea = All;
    Caption = 'HB Táplálkozások';
    PageType = List;
    SourceTable = "HB Nutrition Header";
    UsageCategory = Lists;
    CardPageId = "HB Nutrition Order";
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Nutrition No."; Rec."Nutrition No.")
                {
                    ToolTip = 'Specifies the value of the Táplálkozási szám field.';
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Státusz field.';
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
                field("Date"; Rec."Date")
                {
                    ToolTip = 'Specifies the value of the Dátum field.';
                    ApplicationArea = All;
                }
            }
        }
    }

}
