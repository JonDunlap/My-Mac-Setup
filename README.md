# My Mac Setup

[Updates](#Updates)

[Security Settings](#Security-Settings)

[System Preferences](#System-Preferences)

[Terminal Tools](#Terminal-Tools)

[Safari](#Safari)

[Applications](#Applications)

[Full Sail Programs](#Full-Sail-Programs)

[GitHub Student Developer Pack](#github-student-developer-pack)

## Updates

- On your Mac go to:
  ** > System Preferences > Software Update** check for and install any updates that are available.

## Security Settings

- Go to: ** > System Preferences > Security & Privacy**
  - **> General:** Ensure that a login password has been set. Set your preferences for how long until a password is required and set a lock message if desired.
  - **> FileVault:** Recommended to turn on FileVault
  - **> Privacy:** Will need to give permissions to programs as you install them, it will be done from here

## System Preferences

Check preferences for settings that you want, some of the recommended ones I use.

- Go to ** > System Preferences**

  - **> General:** Uncheck **Ask to keep changes..**
  - **> General:** Check **Allow Handoff..** to enable copy/pasting to and from other Apple devices as well as messaging and calls on your Mac
  - **> Dock:** Change the size and position to what you like
  - **> Accessibility > Siri:** Enable type to Siri so you can use Siri without talking at your Mac
  - **> Touch ID:** Setup Touch ID if available on your Mac
  - **> Users & Groups > Login Options:** Click the lock icon and enter your password to edit. Setup automatic login if you are the only user, click **Show fast user switching menu** to enable your name in the menu bar of your Mac. Looks good and offers a quick way to logoff and change user accounts.
  - **> Keyboard > Keyboard:** Set **Key Repeat** to fast and **Delay Until Repeat** to short. If you are using an external keyboard make sure **Use F1, F2, etc..** is selected so that you can use your keyboard function keys
  - **> Trackpad > Point & Click:** Tracking Speed to fast
  - **> Trackpad > More Gestures:** Select all options for easy navigation
  - **> Mouse:** Tracking Speed to fast

## Terminal tools

Customize the terminal to add some flair.

- **Install Oh my ZSH**
  - Install Oh My Zsh following the instructions [here](https://github.com/robbyrussell/oh-my-zsh)
- **Customize the theme**

  - Inside your terminal open the `.zshrc` file that edits your Oh My Zsh environment

    - Edit the `.zshrc` file to use the Agnoster theme `ZSH_THEME="agnoster"`

  - Need to install the Powerline fonts from [here](https://github.com/powerline/fonts) for the theme to look proper
    - Once installed go to **Terminal > Preferences > Profiles > Text** and change the Font to one of the powerline compatible fonts, I prefer the Source Code Pro font
  - Change your theme to the solarized dark theme colors
    - In terminal you can add a profile to change the theme to match that of the solarized dark theme. [Here](https://gist.github.com/JonDunlap/9ea50b552b0b9d7c84e969866f59baba) is a gist with my solarized terminal profile, or you can go to the [Solarized website](https://ethanschoonover.com/solarized/) to copy the color palette for either the dark or light theme that you prefer.
    - Your terminal should now look similar to this: ![before terminal](</Images/Before change.png>)
  - If you want to remove the default path name
    - In the `.zshrc` file add the line `DEFAULT_USER=YOURUSERNAME` where `YOURUSERNAME` is the username that shows up in your terminal if you would like to shorten your name path in terminal
    - Your terminal will now look like this: ![after terminal](</Images/After change.png>)

Alternatively you can install [iTerm](https://www.iterm2.com) as your default terminal

- If you have already followed the install instructions for Oh My Zsh the only thing you should have to do is change the font and theme in iTerm to match those in terminal
- If not follow the same install instructions from the previous steps

## Safari

Safari is my default web browser on the Mac, it has gotten much better and I have not ran into any issues with websites running or opening strangely. A newer feature is the developer tools that are available, but not enabled by default.

- To enable open Safari, in the menu bar click **Safari > Preferences > Advanced** and select **Show Develop menu in menu bar**. This will enable a new menu bar item that gives you many tools to troubleshoot and inspect webpages.

## Applications

List of applications that I download for my Mac

**xCode**

- This is needed for any coding done on the Mac, it installs the necessary components that are needed to begin coding on your Mac.
  - Install from [AppStore](https://apps.apple.com/us/app/xcode/id497799835?mt=12) or/
  - Using the terminal type `xcode-select --install`

**Git**

- Tool for version control
  - Install from the [Git website](https://git-scm.com)

**GitHub Desktop**

- Works the same as Git, but gives you a UI so you can see what you are doing.
  - Install from [Github](https://desktop.github.com)

**Visual studio Community for Mac**

- Replaces Xamarin on Mac, allows you to create .NET applications that can run on iOS, Android, and the web.
  - Download and install from [Microsoft's Website](https://visualstudio.microsoft.com/vs/mac/)

**Visual studio code**

- VS Code is a multi-purpose editor allowing you to work with various code languages. It is fully customizable and can be enhance with many different packages extending its usability.
  - Download and install from [Microsoft's Website](https://code.visualstudio.com)
  - Gist with user settings located [here](https://gist.github.com/JonDunlap/4bbbd69462aed57daeda4ecc157173f9)
  - Follow instructions [here](https://code.visualstudio.com/docs/setup/mac) to make VS Code accessible from the terminal

**MacUpdater**

- Handy tool to keep almost all of your non Appstore programs up to date on your Mac
  - Download from [here](https://www.corecode.io/macupdater/)
  - You can scan without having to pay for the product and up to 10 automatic updates are included for free. If you use the program to just scan for updates and then just install them yourself you do not need to pay for the license. That being said, this is a great product and is worth the low \$10 price to have all the features and to support the creators.

**Alfred**

- A more powerful spotlight tool. Alfred is a very powerful tool for searching your Mac, opening programs and much more.
  - Install from [here](https://www.alfredapp.com)
  - There is a paid powerpack that extends the functionality of Alfred, I personally have not seen the need to upgrade to it, but depending on if you can put the additional tools to use it may be worth looking at.

**AppCLeaner**

- Cleans some of the leftover files from your Mac after uninstalling an application. Macs are infamous for the amount of junk that is left behind after uninstalling an application and with no easy way to find what is left after an uninstall it can be hard to keep your Mac free of clutter. This application automates that process and gives you an option to remove the additional files from your Mac when you delete an application.
  - Install from [freemacsoft](https://freemacsoft.net/appcleaner/)

**Tiles/Magnet**

- Window management is notoriously horrible in Mac, you can create multiple desktop environments which is great, but you're forced to manually resize and arrange your windows unless you want everything in full screen mode. There are 2 windows management applications that I have tried and they are both good with their own advantages and disadvantages.

* Tiles
  - Another free program from [freemacsoft](https://freemacsoft.net/tiles/)
  - The only disadvantage I had with this application is that there is no 2/3 window size option
* Magnet
  - A paid application on the [App Store](https://apps.apple.com/us/app/magnet/id441258766?mt=12)
  - All of the same benefits as Tiles, but has the support for 2/3 window sizes.

**CheatSheet**

- Great tool for helping you to learn all the shortcuts that are available in your program to help speed up your workflow.
  - Free application from [mediaatelier website](https://www.cheatsheetapp.com/CheatSheet/)

**Google Chrome**

- I keep Google Chrome on my Mac as an alternate browser to check websites when needed.
  - Download from [Google](https://www.google.com/chrome/)

**HP Utilities**

- Drivers and programs for my HP printer/scanner
  - [HP Support](https://support.hp.com/us-en/drivers/selfservice/hp-deskjet-2130-all-in-one-printer-series/7174550)

**Logitech Options**

- Drivers and settings for my MX Master 2s mouse
  - [Logitech](https://www.logitech.com/en-gb/product/options)

**Razer Synapse 2**

- Drivers and settings for my Razer Moba mouse. There is a synapse 3 available however it is not currently available on the Mac.
  - [Razer](https://www.razer.com/synapse-2)

**Transmission**

- Fast, easy, and free BitTorrent client native to the Mac.
  - [Transmission](https://transmissionbt.com)

**VLC**

- Free open-source multimedia player available on multiple platforms.
  - [VideoLAN](https://www.videolan.org/index.html)

**AVG AntiVirus**

- No computer is immune to viruses, AVG is available for free with purchased plans.
  - [AVG](https://www.avg.com/en-ww/homepage#mac)

## App Store

Selection of applications available through the App Store that I use. Makes updates easier and more automated since they are updated through the App Store.

**1Password 7**

- Excellent password manager that was made for Apple products. Integrates with your Mac and iOS devices giving a stronger alternative to Keychain. Generate and save passwords along with 2FA support built into the application.

  - [App store download](https://apps.apple.com/us/app/1password-7-password-manager/id1333542190?mt=12) / [1Password Website](https://1password.com) download from website

  - 6 month free trial available with student email through [Student App Centre](https://www.studentappcentre.com/discounts/1password)

**NordVPN**

- Fast VPN service with worldwide servers. Free 30 day trial available to check if it is right for you. Works on your multiple platforms including your computer, phone, tablets, and can be added straight into your router or other network devices.

  - [NordVPN](https://apps.apple.com/us/app/nordvpn-ike-unlimited-vpn/id1116599239?mt=12) App store download / [NordVPN Website](https://nordvpn.com) download from website

  - 15% discount available from [StudentBeans.com](https://www.studentbeans.com/student-discount/us/nordvpn/code-15-student-discount-0ff030fc-52ea-4ce9-aa43-32800bc9dbd8?source=quick_search)

**Microsoft Office**

- Free student accounts with student email, personally I have prefered Apple's suite of programs to Microsoft's but they both do essentially the same thing.

  - [Microsoft Office 365](https://apps.apple.com/us/app-bundle/microsoft-office-365/id1450038993?mt=12) App store download / [Full Sail install instructions](https://one.fullsail.edu/support/knowledge_base_articles/technical/505)

**Snippets Lab**

- Snippet manager built for the Mac, featuring search integration, iCloud backup, and the ability to label and color categories.

  - [SnippetsLab](https://apps.apple.com/us/app/snippetslab/id1006087419?mt=12) App Store download

**Grammarly for Safari**

- Grammar and spell checker that integrates with Safari.

  - [Grammarly](https://apps.apple.com/us/app/grammarly-for-safari/id1462114288?mt=12) App Store download

**Slack**

- Team messaging application, built for larger organizations allowing teams to stay in touch and provide updates. Used for programming courses.

  - [Slack](https://apps.apple.com/us/app/slack/id803453959?mt=12) App Store download

## Full Sail Programs

Additional software needed for or provided by my school for the purposes of my degree.

**OnTheHub**

- Software hub that distributes programs and their licenses to registered students.
- Needed/available programs
  - **VMWare**
    - Used for programs that can't or won't run on Mac allowing an alternative OS without having to use Bootcamp.
  - **Windows 10 Education**
    - Full version of Windows 10 provided to run with VMWare.
  - **Microsoft Office**
    - Full suite of tools for creating documents.

**Adobe Creative Cloud**

- All Adobe products provided for the Web Design/Development degree.

## Github Student Developer Pack

An amazing pack of software, tools, websites, learning material and more that is constantly updated to provide amazing value to students. Items are either offered free or at severly discounted prices to students.

- Go to [GitHub Education](https://education.github.com/pack) to register with your student email. You can use an already created GitHub account you just have to link it with your University.
- Once registered you have access to a wealth of resources to help you develop as a developer.
