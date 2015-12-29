require_relative 'spec_helper.rb'

driver = Selenium::WebDriver.for :firefox

RSpec.describe "Main page" do
  it "puts the data received from the server on the page" do
    driver.navigate.to 'http://localhost:4567'

    button = driver.find_element(:id, 'button')
    button.click

    textarea = driver.find_element(:id, 'textArea')
    expect(textarea.text).to eq("{'a': 100000}")
  end
end
