require 'rspec/expectations'
require 'appium_lib'
require 'pry'
require 'appium_console'
require 'cucumber'
require_relative 'page_helper.rb'

# necessário para o correto funcionamento do page_helper
World(PageObjects)

# necessário para o correto funcionamento do data_comoons e action_commons
STANDARD_DATA = YAML.load_file('features/support/data/data.yml')

# caps para desenvolvimento/execução na device farm(browserstack) utilizando um device real
opts_android_bs = {
    caps: {
      app: 'bs://5c4df1edfe3a0b2fbf85c8a19147ff6ddca0353e',
      platformName: 'Android',
      platformVersion: '11.0',
      deviceName: 'Google Pixel 4',
      fullReset: true,
      autoGrantPermissions: true,
      autoAcceptAlerts: true,
      newCommandTimeout: 2000,
      realDevice: true,
      build: 'BuildersAppTest',
      javascriptEnabled: true,
      'browserstack.networkLogs': true,
      'browserstack.debug': true,
      'browserstack.interactiveDebugging': true,
    },
    appium_lib: {
      wait_timeout: 30,
      server_url: 'https://gustavoferreira_4cCQhO:81PuwZEXQ1wc4ky57LuG@hub-cloud.browserstack.com/wd/hub',
    },
}

# caps para desenvolvimento/execução localmente utilizando o emulador
opts_android_local = {
    caps: {
      app: 'app/challenge-qa.apk',
      platformName: 'Android',
      platformVersion: '11.0',
      deviceName: 'Google Pixel 4',
      fullReset: true,
      autoGrantPermissions: true,
      autoAcceptAlerts: true,
      newCommandTimeout: 2000,
    },
    appium_lib: {
      wait_timeout: 30,
      server_url: 'http://0.0.0.0:4723/wd/hub',
    },
}

caps = opts_android_bs
Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
