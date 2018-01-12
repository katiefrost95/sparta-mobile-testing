require 'pry'
require 'appium_lib'

Rspec.config do |config|
  config.formatter = :documentation
end

def opts
  {
    caps: {
      #copy and paste the platformName, DeviceName etc into here from appium
      platformName: "Android",
      deviceName: "emulator-5554",
      app: "/Users/tech-a10/Documents/engineering/week10/sparta-mobile-testing/native/app/budgetwatch.apk"
    }
  }
end
