Given("I can open the app") do
  mainpage.main_page_displayed?
end

When("click on budget") do
  mainpage.budget_button_clicked?
end

Then("the budget page opens") do
  budgetpage.budget_page_date_displayed?
end

When("I enter the budget") do
  mainpage.budget_button_clicked?
  budgetpage.add_new_buget_clicked?
  newbudget.budget_name
  newbudget.budget_value
end

And("save the budget") do
  newbudget.click_save_button
end

Then("the budget is saved") do
  budgetpage.new_budget_displayed?
end

And("can be seen on the homepage") do
  budgetpage.new_budget_displayed?
end
