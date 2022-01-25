page 50000 "HB Macronutrients TableWiew"
{

    Caption = 'HB Táplálékok';
    PageType = List;
    SourceTable = "HB Macronutrients";
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Kód field.';
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Leírás field.';
                    ApplicationArea = All;
                }
                field("Unit of measure"; Rec."Unit of measure")
                {
                    ToolTip = 'Specifies the value of the Mértékegység field.';
                    ApplicationArea = All;
                }
                field(Protein; Rec.Protein)
                {
                    ToolTip = 'Specifies the value of the Fehérje field.';
                    ApplicationArea = All;
                }
                field(Fat; Rec.Fat)
                {
                    ToolTip = 'Specifies the value of the Zsír field.';
                    ApplicationArea = All;
                }
                field(Carbohydrate; Rec.Carbohydrate)
                {
                    ToolTip = 'Specifies the value of the Szénhidrát field.';
                    ApplicationArea = All;
                }
                field(KJ; Rec.KJ)
                {
                    ToolTip = 'Specifies the value of the KJ field.';
                    ApplicationArea = All;
                }
                field(Kcal; Rec.Kcal)
                {
                    ToolTip = 'Specifies the value of the Kcal field.';
                    ApplicationArea = All;
                }
            }
        }
    }

}
