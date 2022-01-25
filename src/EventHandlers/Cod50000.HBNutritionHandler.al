codeunit 50000 "HB Nutrition Handler"
{
    // Table: HB Nutrition Header

    [EventSubscriber(ObjectType::Table, Database::"HB Nutrition Header", 'OnBeforeValidateEvent', 'Customer No.', false, false)]
    local procedure OnBeforeValidateEvent_CustomerNo(var Rec: Record "HB Nutrition Header")
    var
        NutritionMgt: Codeunit "HB Nutrition Management";
    begin
        NutritionMgt.ValidateCustomerNo(Rec);
    end;

    [EventSubscriber(ObjectType::Table, Database::"HB Nutrition Header", 'OnBeforeDeleteEvent', '', false, false)]
    local procedure OnBeforeDeleteEvent(var Rec: Record "HB Nutrition Header")
    var
        NutritionMgt: Codeunit "HB Nutrition Management";
    begin
        NutritionMgt.DeleteHeader(Rec);
    end;

    // Table: HB Nutrition Line

    [EventSubscriber(ObjectType::Table, Database::"HB Nutrition Line", 'OnBeforeValidateEvent', 'Nutrient Code', false, false)]
    local procedure OnBeforeValidateEvent_NutrientCode(var Rec: Record "HB Nutrition Line")
    var
        NutritionMgt: Codeunit "HB Nutrition Management";
    begin
        NutritionMgt.CalulateNutritionLine(Rec);
    end;

    [EventSubscriber(ObjectType::Table, Database::"HB Nutrition Line", 'OnBeforeValidateEvent', 'Quantity', false, false)]
    local procedure OnBeforeValidateEvent_Quantity(var Rec: Record "HB Nutrition Line")
    var
        NutritionMgt: Codeunit "HB Nutrition Management";
    begin
        NutritionMgt.CalulateNutritionLine(Rec);
    end;

    // Page: HB Nutrition Order

    [EventSubscriber(ObjectType::Page, Page::"HB Nutrition Order", 'OnBeforeActionEvent', 'ReleaseStatus', false, false)]
    local procedure OnBeforeActionEvent_ReleaseStatus(var Rec: Record "HB Nutrition Header")
    var
        NutritionMgt: Codeunit "HB Nutrition Management";
    begin
        NutritionMgt.ReleaseStatus(Rec);
    end;

    [EventSubscriber(ObjectType::Page, Page::"HB Nutrition Order", 'OnBeforeActionEvent', 'ReopenStatus', false, false)]
    local procedure OnBeforeActionEvent_ReopenStatus(var Rec: Record "HB Nutrition Header")
    var
        NutritionMgt: Codeunit "HB Nutrition Management";
    begin
        NutritionMgt.ReopenStatus(Rec);
    end;

    [EventSubscriber(ObjectType::Page, Page::"HB Nutrition Order", 'OnBeforeActionEvent', 'Post', false, false)]
    local procedure OnBeforeActionEvent_Post(var Rec: Record "HB Nutrition Header")
    var
        NutritionMgt: Codeunit "HB Nutrition Management";
    begin
        NutritionMgt.Post(Rec);
    end;

    [EventSubscriber(ObjectType::Page, Page::"HB Nutrition Order", 'OnNewRecordEvent', '', false, false)]
    local procedure OnNewRecordEvent(var Rec: Record "HB Nutrition Header")
    var
        NutritionMgt: Codeunit "HB Nutrition Management";
    begin
        NutritionMgt.NewHeader(Rec);
    end;

    // Page: HB Nutrition Setup

    [EventSubscriber(ObjectType::Page, Page::"HB Nutrition Setup", 'OnOpenPageEvent', '', false, false)]
    local procedure OnOpenPageEvent(var Rec: Record "HB Nutrition Setup")
    var
        NutritionMgt: Codeunit "HB Nutrition Management";
    begin
        NutritionMgt.CreateSetup(Rec);
    end;
}
