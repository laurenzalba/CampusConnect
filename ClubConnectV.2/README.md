# ClubConnect — Campus Club Connect

This project follows Machine Problem 1 for a Storyboard/UIKit iOS app with a Navigation Controller, a manual identified Show segue, user input controls, `prepare(for:sender:)`, and a confirmation screen.

## Xcode compatibility

- Prepared specifically for **Xcode 26.1.1**.
- Xcode 26.1.1 includes the **Swift 6.2.1 compiler** and the **iOS 26.1 SDK**.
- The project uses **Swift 6 language mode** (`SWIFT_VERSION = 6.0`).
- Minimum deployment target: **iOS 17.0**. This is lower than the SDK version and is supported by Xcode 26.1.1.
- Bundle identifier: **`com.feit.clubconnect`**.
- Project upgrade metadata is set for Xcode 26.1 rather than Xcode 27.

## What is implemented

- Product name: `ClubConnect`
- UIKit + Storyboard project
- No Core Data and no test target
- `WelcomeViewController` embedded in a `UINavigationController`
- App title is assigned programmatically in `viewDidLoad()` through an IBOutlet
- Subtitle and logo placeholder
- `UITextField` for the student's name
- `UISwitch` for meeting reminders
- `UISegmentedControl` with Member / Officer
- Join button connected to an IBAction
- Manual **Show** segue with identifier `ShowConfirmationSegue`
- Safe optional handling and default name `Club Member`
- `prepare(for:sender:)` passes the name, reminder preference, and role
- `ConfirmationViewController` builds and displays the personalized confirmation message
- Navigation Controller provides the Back button automatically
- Auto Layout constraints are included for compact and large iPhone screens
- Git repository is included

## Open and run in Xcode 26.1.1

1. Extract the ZIP.
2. Open `ClubConnect.xcodeproj`.
3. Select the `ClubConnect` scheme.
4. Choose an iPhone Simulator.
5. Press **Run**.
6. Test once with a name entered and once with the name field empty.

For a physical iPhone, choose your Apple Development Team under **Signing & Capabilities**. If Xcode asks for a unique bundle identifier for device signing, replace `com.feit.clubconnect` with one unique to your Apple account.

## Submission reminders

The activity also requires actual Simulator screenshots and a short 3–5 sentence reflection. `Reflection.txt` contains a draft, and `Screenshots/README.txt` lists the screenshots to capture. Before submitting, rename the ZIP using your course format: `LastName_FirstName_MP1_ClubConnect.zip`.

You should still run the project in your own copy of Xcode 26.1.1 and be able to explain the code, as required by the activity.
