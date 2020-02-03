# XCFrameworks Example

A simple example to demonstrate how use XCFrameworks and generate them from a Makefile using a terminal.

The purpose of this text is to create an alternative to modularize an iOS Application, prevent Xcode to rebuild frameworks multiple times without necessity and reduce the build time. 

**If you have no problems with build time or large/heavy projects, this text will probably not help you.**

## Generating frameworks
To generate the XCFrameworks for main project, run the following command at the root of the project in your terminal:
```
$ make build-all
```

The command `build-all` will loop through a frameworks directories list and run the subfolders Makefile command to build the binary framework for iOS and Simulator platforms.

If you add more frameworks to your project, you'll need to update the directories list to increment the loop.

The command output will locate the XCFramework files at `frameworks` directory. You can change anything you want (rename directories or files, change the output destination, etc...).

<p align="center">
    <img src="repository-images/diagram.png" max-width="80%" alt="Repository Filters" />
</p>

## How can I use this in real life?
The main idea of this concept is to only use the binary version of each framework, preventing the Xcode to rebuild all frameworks again without a real necessity.

In a team with others developers, it's recommended to separate your application in multiple frameworks, even in a feature level separation, if needed.
By separating your features in frameworks, teams will work with specific pieces of your project, improving the performance, testability and speed of work.

If you need to test all frameworks together in the main iOS Application, go back to root directory and run the `build-all` command again.

After all, the main iOS Application will only has a single responsability: be the center of all generated frameworks.

Theoretically, the other teams will not work with the main project directly. Instead, a specific team (deploy team, architecture team, base team or something similar) will be in charge to gather all frameworks, mount the structure, connect the features and ship the final archive to the App Store, for example.

## Final considerations

This is a simple way to keep your large or heavy project organized, clean and with a fast build time. Of course, you can use CocoaPods or Carthage to generate modules and distribute for your coleegues, but here I mantain the original alternative provided by Apple. 

Please, feel free to send suggestions, corrections and improvements to this example.

Thanks for reading. ♥️