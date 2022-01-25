table 50002 "HB Nutrition Line"
{
    Caption = 'HB Táplálkozás Sor';
    DataClassification = CustomerContent;
    LookupPageId = "HB Nutrition Order Subpage";
    DrillDownPageId = "HB Nutrition Order Subpage";

    fields
    {
        field(1; "Nutrition No."; Code[20])
        {
            Caption = 'Táplálkozási szám';
            DataClassification = CustomerContent;
            TableRelation = "HB Nutrition Header"."Nutrition No.";
        }
        field(2; "No."; Integer)
        {
            Caption = 'Sorszám';
            DataClassification = CustomerContent;
        }
        field(3; "Nutrient Code"; Text[50])
        {
            Caption = 'Tápanyag kód';
            DataClassification = CustomerContent;
            TableRelation = "HB Macronutrients";
        }
        field(4; Description; Text[100])
        {
            Caption = 'Megnevezés';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(5; Quantity; Decimal)
        {
            Caption = 'Mennyiség';
            DataClassification = CustomerContent;
        }
        field(6; "Unit of measure"; Code[10])
        {
            Caption = 'Mértékegység';
            DataClassification = CustomerContent;
            TableRelation = "Unit of Measure";
            Editable = false;
        }
        field(7; Protein; Decimal)
        {
            Caption = 'Fehérje';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(8; Fat; Decimal)
        {
            Caption = 'Zsír';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(9; Carbohydrate; Decimal)
        {
            Caption = 'Szénhidrát';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(10; KJ; Decimal)
        {
            Caption = 'KJ';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(11; Kcal; Decimal)
        {
            Caption = 'Kcal';
            DataClassification = CustomerContent;
            Editable = false;
        }
    }
    keys
    {
        key(PK; "Nutrition No.", "No.")
        {
            Clustered = true;
        }
        key(SumIndexKey; "Nutrition No.")
        {
            SumIndexFields = Protein, Fat, Carbohydrate, KJ, Kcal;
        }
    }
}
