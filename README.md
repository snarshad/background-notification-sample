background-notification-sample
==============================

Making Background Notification work with Google Maps SDK for iOS.

To make this work, install [CocoaPods](http://cocoapods.org/) then:

    $ pod install
    // Wait for cocoapods to install Google Maps SDK for iOS and deps
    $ open HelloBackgroundFetch.xcworkspace

==============================
The above seems to not be treated the same as when the frameworks are linked in the target in an .xcodeproj file.
Once you've set up using the above, you can also:

	open PodLess-HelloBackgroundFetch.xcodeproj

This does require the first version to be built and run first, just to get the GoogleMaps.framework complete.
Notice that all the required frameworks are linked, including the GoogleMaps.framework and the OpenGLES.framework.
In the scheme settings, "Launch Due To A Background Fetch Event" is checked.

This version, if run on a device, will launch in the foreground instead of the background.

One thing I notice in the device console is that the following line is present when the original app is launched due to a bg fetch event

	com.apple.debugserver-300.2[13334] <Warning>: Setting ActivateForEvent key in options dictionary.

But is absent for the podless version.  This may not even be relevant, and just might be another symptom of the actual problem.

For reference, I filed this with Apple as rdar://15237342 "Can't use "launch due to a background fetch event" to launch app in BG if OpenGLES.framework is linked"