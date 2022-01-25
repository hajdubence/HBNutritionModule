codeunit 50001 "HB Nutrition Management"
{
    // Table: HB Nutrition Header

    internal procedure ValidateCustomerNo(var Rec: Record "HB Nutrition Header")
    var
        Customer: Record Customer;
    begin
        if Customer.Get(Rec."Customer No.") then
            Rec."Customer Name" := Customer.Name
        else
            Rec."Customer Name" := '';
        Rec.Modify();
    end;

    internal procedure DeleteHeader(var Rec: Record "HB Nutrition Header")
    var
        NutritionLine: Record "HB Nutrition Line";
    begin
        NutritionLine.Reset();
        NutritionLine.SetRange("Nutrition No.", Rec."Nutrition No.");
        NutritionLine.DeleteAll();
    end;

    // Table: HB Nutrition Line

    internal procedure CalulateNutritionLine(var Rec: Record "HB Nutrition Line")
    var
        Nutrient: Record "HB Macronutrients";
    begin
        if Nutrient.Get(Rec."Nutrient Code") then begin
            Rec.Description := Nutrient.Description;
            Rec.Protein := Nutrient.Protein * Rec.Quantity;
            Rec.Fat := Nutrient.Fat * Rec.Quantity;
            Rec.Carbohydrate := Nutrient.Carbohydrate * Rec.Quantity;
            Rec."Unit of measure" := Nutrient."Unit of measure";
            Rec.KJ := Nutrient.KJ * Rec.Quantity;
            Rec.Kcal := Nutrient.Kcal * Rec.Quantity
        end else begin
            Rec.Description := '';
            Rec.Protein := 0;
            Rec.Fat := 0;
            Rec.Carbohydrate := 0;
            Rec."Unit of measure" := '';
            Rec.KJ := 0;
            Rec.Kcal := 0;
        end;
    end;

    // Page: HB Nutrition Order

    internal procedure ReleaseStatus(var Rec: Record "HB Nutrition Header")
    begin
        Rec.TestField(Date);
        Rec.Status := enum::"Sales Document Status"::Released;
        Rec.Modify();
    end;

    internal procedure ReopenStatus(var Rec: Record "HB Nutrition Header")
    begin
        Rec.Status := enum::"Sales Document Status"::Open;
        Rec.Modify();
    end;

    internal procedure NewHeader(var Rec: Record "HB Nutrition Header")
    var
        NoSeriesMgt: Codeunit NoSeriesManagement;
        NoSeries: Record "No. Series";
        Setup: Record "HB Nutrition Setup";
    begin
        if Setup.Get() and NoSeries.Get(Setup."Nutrition Header No Series") then
            Rec."Nutrition No." := NoSeriesMgt.GetNextNo(Setup."Nutrition Header No Series", WorkDate(), true);
        Rec.Date := Today();
    end;

    internal procedure Post(var NutritionHeader: Record "HB Nutrition Header")
    var
        PostedNutritionHeader: Record "HB Posted Nutrition Header";
        PostedNutritionLine: Record "HB Posted Nutrition Line";
        NutritionLine: Record "HB Nutrition Line";
        QuestionLbl: Label 'Szeretné törölni a(z) %1 táplálkozást?';
        NoSeriesMgt: Codeunit NoSeriesManagement;
        NoSeries: Record "No. Series";
        Setup: Record "HB Nutrition Setup";
    begin
        NutritionHeader.TestField(Status, NutritionHeader.Status::Released);

        PostedNutritionHeader.Init();
        PostedNutritionHeader.TransferFields(NutritionHeader);
        if Setup.Get() and NoSeries.Get(Setup."P. Nutrition Header No Series") then
            PostedNutritionHeader."Nutrition No." := NoSeriesMgt.GetNextNo(Setup."P. Nutrition Header No Series", WorkDate(), true);
        PostedNutritionHeader.Insert();

        NutritionLine.Reset();
        NutritionLine.SetRange("Nutrition No.", NutritionHeader."Nutrition No.");
        NutritionLine.SetFilter(Quantity, '>0');
        if NutritionLine.FindSet() then
            repeat
                PostedNutritionLine.Init();
                PostedNutritionLine.TransferFields(NutritionLine);
                PostedNutritionLine."Nutrition No." := PostedNutritionHeader."Nutrition No.";
                PostedNutritionLine.Insert();
            until NutritionLine.Next() = 0;

        if Confirm(QuestionLbl, true, NutritionHeader."Nutrition No.") then
            NutritionHeader.Delete(true);

        Commit();
        page.RunModal(Page::"HB Posted Nutrition Order", PostedNutritionHeader);
    end;

    // Page: HB Nutrition Setup

    internal procedure CreateSetup(var Rec: Record "HB Nutrition Setup")
    begin
        if not Rec.Get then begin
            Rec.Init();
            Rec.Insert();
        end;
    end;
}
