# SampleCode_Tealeaf_iOS_WebExample
# iOS WebExample instrumented with Tealeaf sdk.

**DOM Diff** is now supported in **SaaS** only. This application has **DOM Diff** enabled. You will need to change from:

**diffEnabled: false,**

to 

**diffEnabled: true,**

## In the following files:

* defaultNativeDomCaptureConfiguration.js
* defaultNativeDomCaptureGesturesConfigurationHammer1.js

## Getting Started

### Prerequisites

You need to have recent cocoapods version install on your Mac OS. Current version is 1.4.0. Please refer to cocoapods website for the details.

For SDK prerequisites and documentation, please refer to the SDK documentation [here](https://developer.goacoustic.com/acoustic-exp-analytics/docs/acoustic-experience-analytics-tealeaf-sdk-for-ios-standard-and-mobile-editions)

### Installing

Clone the sample app code from git hub location

`git clone https://github.com/acoustic-analytics/SampleCode_Tealeaf_iOS_WebExample.git`

Go to the sample app location

`cd WebExample`

Also note the platform in the Podfile iOS 12

`platform :ios, '12.0'`

Note that use_frameworks is commented

`# use_frameworks!`

In the respective targets for your project in the Podfile add the following line if you want to use Tealeaf SDK's release version

`pod 'Tealeaf'`

In the respective targets for your project in the Podfile add the following line if you want to use Tealeaf SDK's debug version

`pod 'TealeafDebug'`

You will notice that by default the sample application uses `pod 'TealeafDebug'`

Note that you can use only one of  `pod 'Tealeaf'` and `pod 'TealeafDebug'`. Do not use both at the same time.

Now you need to install the pods by running one of the following commands.

`pod install`

or to update

`pod update`

Above pod command (install or update) should complete with no errors. If you do see errors run the same command with `--verbose` option and share the error log with us.

Open `WebExample.xcworkspace` file and not the `WebExample.xcodeproj` file. Once you open the workspace file, please use target WebExample to build the sample app and run it. There are multiple targets in the project however the only one that serves for this example is the WebExample target.

## Update Post Location
Go to `TealeafBasicConfig.plist`, then update `AppKey` for correct app key if you are using SaaS. Also update `PostMessageUrl` to correct post url.

## Troubleshooting

<<<<<<< HEAD
If you are using Debug version of Tealeaf SDK. i.e. `pod 'IBMTealeafDebug'` , then you may edit your project's scheme in XCode and add environmental variable `EODebug`and set its value to 1; also add environmental variable `TLF_DEBUG` and set its value to 1. This will make the SDK to start writing debug logs to your xcode console window. If and when you want to report issues, the Tealeaf support engineers will ask you for these logs.
=======
If you are using Debug version of Tealeaf SDK. i.e. `pod 'TealeafDebug'` , then you may edit your project's scheme in XCode and add environmental variable `EODebug`and set its value to 1; also add environmental variable `TLF_DEBUG` and set its value to 1. This will make the SDK to start writing debug logs to your xcode console window. If and when you want to report issues, the Tealeaf support engineers will ask you for these logs.
>>>>>>> origin/master


## Versioning


## License

License files can be read [here](https://github.com/acoustic-analytics/SampleCode_Tealeaf_iOS_WebExample/blob/master/Licenses/License)
