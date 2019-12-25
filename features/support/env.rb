require 'appium_lib'
require 'rspec'

app_path = File.join(Bundler.root, 'apps', 'wdio-native.apk')

Before do | scenario |
  # need to configure env variables for browser
  desiredCapabilities = {
    caps: {
      udid: '32009f174a8cc535',
      platformName: 'Android',
      plaformVersion: '9',
      deviceName: 'Galaxy A7 (2018)',
      appPackage: 'com.wdiodemoapp',
      appActivity: 'com.wdiodemoapp.MainActivity',
      noReset: false,
      automationName: 'UiAutomator2',
      orientation: 'PORTRAIT',
      app: app_path,
    }
  }

  @driver = Appium::Driver.new(desiredCapabilities, true)
  @driver.start_driver
end

# "after all"
After do | scenario |
  @driver.driver_quit
end
