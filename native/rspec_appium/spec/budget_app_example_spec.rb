require 'spec_helper'

describe 'testing the budget app' do

  before(:all) do
    @driver = Appium::Driver.new(opts, true)
    Appium.promote_appium_methods(Rspec::Core::ExampleGroup)
    @driver.start_driver
  end

  after(:all) do
    @driver.driver_quit
  end

  it "should open the budgetwatch app" do
    find_elements(:id, '')[0].displayed? #find id of element by looking at source code in appium
  end

  it 'should have the budget option on the main landing page' do
    expect(find_elements(:id, 'protect.budgetwatch:id/menu')[0].text).to eq "Budgets"
  end

  it "should access the budget page" do
    find_elements(:id, 'protect.budgetwatch:id/menu')[0].click
    find_elements(:id, 'protect.budgetwatch:id/action_calendar').displayed?
  end

  it "shold be able to add a budget" do
    find_element(:id, 'protect.budgetwatch:id/action_add').click
    find_element(:id, 'protect.budgetwatch:id/budgetNameEdit').send_keys("test")
    find_element(:id, 'protect.budgetwatch:id/budgetValueEdit').send_keys("200")
    find_element(:id, 'protect.budgetwatch:id/action_save').click
    expect(find_elements(:id, 'protect.budgetwatch:id/budgetName')[0].text).to eq("test")
  end

end
