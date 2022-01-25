page 50001 "HB Nutrition Order"
{

    Caption = 'HB Táplálkozás';
    PageType = Document;
    SourceTable = "HB Nutrition Header";

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
                    Editable = false;
                }
                field("Nutrition No."; Rec."Nutrition No.")
                {
                    ToolTip = 'Specifies the value of the Táplálkozási szám field.';
                    ApplicationArea = All;
                    Editable = PageEditable;
                }
                field("Date"; Rec."Date")
                {
                    ToolTip = 'Specifies the value of the Dátum field.';
                    ApplicationArea = All;
                    Editable = PageEditable;
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ToolTip = 'Specifies the value of the Vevő field.';
                    ApplicationArea = All;
                    Editable = PageEditable;
                    trigger OnValidate()
                    begin
                        CurrPage.Update();
                    end;
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ToolTip = 'Specifies the value of the Vevő neve field.';
                    ApplicationArea = All;
                }
            }
            part(Lines; "HB Nutrition Order Subpage")
            {
                ApplicationArea = All;
                SubPageLink = "Nutrition No." = field("Nutrition No.");
                Editable = PageEditable;
                UpdatePropagation = Both;
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
    actions
    {
        area(Processing)
        {
            action(ReleaseStatus)
            {
                Caption = 'Release Status';
                Image = ReleaseDoc;
                ApplicationArea = All;
            }
            action(ReopenStatus)
            {
                Caption = 'Reopen Status';
                Image = ReOpen;
                ApplicationArea = All;
            }
            action(Post)
            {
                Caption = 'Könyvel';
                Image = Post;
                ApplicationArea = All;
            }
        }
    }

    trigger OnAfterGetCurrRecord()
    begin
        PageEditable := (Rec.Status = Rec.Status::Open);
    end;

    var
        PageEditable: Boolean;
}
