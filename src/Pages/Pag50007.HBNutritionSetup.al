page 50007 "HB Nutrition Setup"
{
    Caption = 'HB Nutrition Setup';
    PageType = Document;
    InsertAllowed = false;
    DeleteAllowed = false;
    SourceTable = "HB Nutrition Setup";
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Nutrition Header No Series"; Rec."Nutrition Header No Series")
                {
                    ToolTip = 'Specifies the value of the Nutrition Header No Series field.';
                    ApplicationArea = All;
                }
                field("P. Nutrition Header No Series"; Rec."P. Nutrition Header No Series")
                {
                    ToolTip = 'Specifies the value of the Posted Nutrition Header No Series field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
