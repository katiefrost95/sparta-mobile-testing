require_relative './pages/main_page'
require_relative './pages/budget_page'
require_relative './pages/fill_in_budget'

module BudgetApp

  def mainpage
    MainPage.new($driver)
  end

  def budgetpage
    BudgetPage.new($driver)
  end

  def newbudget
    NewBudget.new($driver)
  end

end
