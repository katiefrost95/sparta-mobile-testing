class NewBudget

  FILL_IN_NAME = 'protect.budgetwatch:id/budgetNameEdit'
  FILL_IN_VALUE = 'protect.budgetwatch:id/valueEdit'
  SAVE_BUTTON ='protect.budgetwatch:id/action_save'

  def initialize(driver)
    @driver = driver
  end

  def budget_name
    @driver.find_element(:id, FILL_IN_NAME).send_keys("test")
  end

  def budget_value
    @driver.find_element(:id, FILL_IN_VALUE).send_keys("200")
  end

  def click_save_button
    @driver.find_element(:id, SAVE_BUTTON).click
  end


end
