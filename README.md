# sparta-mobile-testing

This Repository contains practice using Appium and android studio to run mobile tests on a budget app.

### Running the tests

To access the contents of this repo enter the following commands into your terminal:

    git clone 'git@github.com:katiefrost95/sparta-mobile-testing.git'

    cd sparta-mobile-testing

Open the folder in your text editor.

The gem dependencies in this file are appium-lib and pry. To install them you need to run:

    gem install appium_lib

    gem install pry

The programs used to run the tests are appium and android studio. The documentation to download these are:

Android studio - https://developer.android.com/studio/index.html

Appium - https://github.com/appium/appium-desktop/releases/tag/v1.2.2


##### To run the RSpec tests

If RSpec isnt installed in the terminal run

    gem install RSpec

    cd rspec_appium

    rspec

##### To run the UI tests

    gem install cucumber

    cd cucumber-appium

    cucumber
