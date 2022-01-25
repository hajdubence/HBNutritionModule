table 50005 "HB Nutrition Setup"
{
    Caption = 'HB Nutrition Setup';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Key"; Code[20])
        {
            Caption = 'Key';
            DataClassification = ToBeClassified;
        }
        field(2; "Nutrition Header No Series"; Code[20])
        {
            Caption = 'Nutrition Header No Series';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series".Code;
        }
        field(3; "P. Nutrition Header No Series"; Code[20])
        {
            Caption = 'Posted Nutrition Header No Series';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series".Code;
        }
    }
    keys
    {
        key(PK; "Key")
        {
            Clustered = true;
        }
    }
}
