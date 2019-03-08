# Sample Project
This project is a companion to our blog post about app modularisation: [read blog post](https://engineering.depop.com/scaling-up-an-ios-app-with-modularisation-8cd280d6b2b8)

If you want more information on the structure of this project please check the link first.

To explore the project just open **MyFirstModule.xcworkspace**.

## What's inside
The workspace has several sub projects:

**App** contains the main app bundle.  
**Modules** contains two distinct sets of feature: _Chat_ and _UserProfile_.  
**Service** and Utils contain things shared by all the features.  
**Dependendencies** is where you'll find the public protocol for all modules.

## What can you do
This can be a base for a new project where you want to provide a basic support for modularisation. If you don't think your project will need this complexity then start simple and adopt something similar later.

Try to add navigate to move the logic to return the _currentUser_ from the _AppDelegate_ inside the _UserProfile_ module.  
What if you want to acccess this information from within the _Chat_ module?

Get in touch! Any feedback or comment is welcome.  
Just open a new _issue_ from the repo page.


Thank you!  
_Depop iOS Team_