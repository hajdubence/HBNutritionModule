table 50000 "HB Macronutrients"
{
    Caption = 'HB Táplálék';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Code"; Text[50])
        {
            Caption = 'Kód';
            DataClassification = CustomerContent;
        }
        field(2; Description; Text[100])
        {
            Caption = 'Leírás';
            DataClassification = CustomerContent;
        }
        field(3; "Unit of measure"; Code[10])
        {
            Caption = 'Mértékegység';
            DataClassification = CustomerContent;
            TableRelation = "Unit of Measure";
        }
        field(4; Protein; Decimal)
        {
            Caption = 'Fehérje';
            DataClassification = CustomerContent;
        }
        field(5; Fat; Decimal)
        {
            Caption = 'Zsír';
            DataClassification = CustomerContent;
        }
        field(6; Carbohydrate; Decimal)
        {
            Caption = 'Szénhidrát';
            DataClassification = CustomerContent;
        }
        field(7; KJ; Decimal)
        {
            Caption = 'KJ';
            DataClassification = CustomerContent;
        }
        field(8; Kcal; Decimal)
        {
            Caption = 'Kcal';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
}
