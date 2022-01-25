page 50003 "HB Nutrition Order Subpage"
{

    Caption = 'HB Nutrition Order Subpage';
    PageType = ListPart;
    SourceTable = "HB Nutrition Line";
    AutoSplitKey = true;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Nutrient Code"; Rec."Nutrient Code")
                {
                    ToolTip = 'Specifies the value of the Tápanyag kód field.';
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        CurrPage.Update();
                    end;
                }
                field("Description"; Rec."Description")
                {
                    ToolTip = 'Specifies the value of the Megnevezés field.';
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ToolTip = 'Specifies the value of the Mennyiség field.';
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        CurrPage.Update();
                    end;
                }
                field("Unit of measure"; Rec."Unit of measure")
                {
                    ToolTip = 'Specifies the value of the Mértékegység field.';
                    ApplicationArea = All;
                }
                field("Protein"; Rec."Protein")
                {
                    ToolTip = 'Specifies the value of the Fehérje field.';
                    ApplicationArea = All;
                }
                field("Fat"; Rec."Fat")
                {
                    ToolTip = 'Specifies the value of the Zsír field.';
                    ApplicationArea = All;
                }
                field("Carbohydrate"; Rec."Carbohydrate")
                {
                    ToolTip = 'Specifies the value of the Szénhidrát field.';
                    ApplicationArea = All;
                }
                field("KJ"; Rec."KJ")
                {
                    ToolTip = 'Specifies the value of the KJ field.';
                    ApplicationArea = All;
                }
                field("Kcal"; Rec."Kcal")
                {
                    ToolTip = 'Specifies the value of the Kcal field.';
                    ApplicationArea = All;
                }

            }
        }
    }

}
