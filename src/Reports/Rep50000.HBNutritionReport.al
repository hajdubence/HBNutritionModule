report 50000 "HB Nutrition Report"
{
    ApplicationArea = All;
    Caption = 'Nutrition Report';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = '.\src\Reports\HBNutritionReport.rdlc';

    dataset
    {
        dataitem(HBPostedNutritionHeader; "HB Posted Nutrition Header")
        {
            column(CustomerName; "Customer Name")
            {
            }
            column(CustomerNo; "Customer No.")
            {
            }
            column(Date; "Date")
            {
            }
            column(NutritionNo; "Nutrition No.")
            {
            }
            column(Status; Status)
            {
            }
            column(SumCarbohydrate; "Sum Carbohydrate")
            {
            }
            column(SumFat; "Sum Fat")
            {
            }
            column(SumKJ; "Sum KJ")
            {
            }
            column(SumKcal; "Sum Kcal")
            {
            }
            column(SumProtein; "Sum Protein")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
