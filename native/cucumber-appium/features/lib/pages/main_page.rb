class MainPage

  BUDGET_AND_TRANSACTION = 'protect.budgetwatch:id/action_settings'
  BUDGETS_BUTTON = 'protect.budgetwatch:id/menu'


  def initialize(driver)
    @driver = driver
  end

  def main_page_displayed?
    @driver.find_element(:id, BUDGET_AND_TRANSACTION)
  end

  def budget_button_clicked?
    @driver.find_element(:id, BUDGETS_BUTTON).click
  end

end
