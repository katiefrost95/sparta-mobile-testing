class BudgetPage

  BUDGET_PAGE = 'protect.budgetwatch:id/dateRange'
  ADD_BUDGET = 'protect.budgetwatch:id/action_add'
  NEW_BUDGET ='protect.budgetwatch:id/budgetName'

  def initialize(driver)
    @driver = driver
  end

  def budget_page_date_displayed?
    @driver.find_elements(:id, BUDGET_PAGE)[0].displayed?
  end

  def add_new_buget_clicked?
    @driver.find_element(:id, ADD_BUDGET).click
  end

  def new_budget_displayed?
    @driver.find_elements(:id, NEW_BUDGET)[0].displayed?
  end
end
