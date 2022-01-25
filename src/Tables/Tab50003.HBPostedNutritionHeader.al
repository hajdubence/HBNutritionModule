table 50003 "HB Posted Nutrition Header"
{
    Caption = 'HB Könyvelt Táplálkozás Fej';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Nutrition No."; Code[20])
        {
            Caption = 'Táplálkozási szám';
            DataClassification = CustomerContent;
        }
        field(2; "Customer No."; Code[20])
        {
            Caption = 'Vevő';
            DataClassification = CustomerContent;
            TableRelation = Customer."No.";
        }
        field(3; "Customer Name"; Text[100])
        {
            Caption = 'Vevő neve';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(4; "Date"; Date)
        {
            Caption = 'Dátum';
            DataClassification = CustomerContent;
        }
        field(5; Status; Enum "Sales Document Status")
        {
            Caption = 'Státusz';
            DataClassification = CustomerContent;
        }
        field(6; "Sum Protein"; Decimal)
        {
            Caption = 'Összes Fehérje';
            FieldClass = FlowField;
            CalcFormula = sum("HB Posted Nutrition Line".Protein where("Nutrition No." = field("Nutrition No.")));
            Editable = false;
        }
        field(7; "Sum Fat"; Decimal)
        {
            Caption = 'Összes Zsír';
            FieldClass = FlowField;
            CalcFormula = sum("HB Posted Nutrition Line".Fat where("Nutrition No." = field("Nutrition No.")));
            Editable = false;
        }
        field(8; "Sum Carbohydrate"; Decimal)
        {
            Caption = 'Összes Szénhidrát';
            FieldClass = FlowField;
            CalcFormula = sum("HB Posted Nutrition Line".Carbohydrate where("Nutrition No." = field("Nutrition No.")));
            Editable = false;
        }
        field(9; "Sum KJ"; Decimal)
        {
            Caption = 'Összes KJ';
            FieldClass = FlowField;
            CalcFormula = sum("HB Posted Nutrition Line".KJ where("Nutrition No." = field("Nutrition No.")));
            Editable = false;
        }
        field(10; "Sum Kcal"; Decimal)
        {
            Caption = 'Összes Kcal';
            FieldClass = FlowField;
            CalcFormula = sum("HB Posted Nutrition Line".Kcal where("Nutrition No." = field("Nutrition No.")));
            Editable = false;
        }
    }
    keys
    {
        key(PK; "Nutrition No.")
        {
            Clustered = true;
        }
    }
}
