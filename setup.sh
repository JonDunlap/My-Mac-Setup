# echo "Creating an SSH key for you..."
# ssh-keygen -t rsa
# Connecting to GitHub with SSH https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh
# Generate SSH Key https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

# echo "Please add this public key to Github \n"
# echo "https://github.com/account/ssh \n"
# read -p "Press [Enter] key after this..."

# TODO - update Mac first?

echo "Installing xcode-stuff"
xcode-select --install

### Install and update Homebrew

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
	echo "Installing homebrew..."
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update homebrew recipes
echo "Updating homebrew..."
brew update

### Install Homebrew formulaes

# Brew formulaes
brews=(
	antigen # Plugin manager for zsh, inspired by oh-my-zsh and vundle https://antigen.sharats.me/
	git # Distributed revision control system https://git-scm.com/
	mackup # Keep your Mac's application settings in sync https://github.com/lra/mackup
	mas # Mac App Store command-line interface https://github.com/mas-cli/mas
	neofetch # Fast, highly customisable system info script https://github.com/dylanaraps/neofetch
	nvm # Manage multiple Node.js versions https://github.com/nvm-sh/nvm
	trash # CLI tool that moves files or folder to the trash https://hasseg.org/trash/
)

# Install Brew formulaes
echo "Installing brew stuff..."
brew install ${brews[@]}

### Install Brew apps/casks

# Brew Apps/Casks
apps=(
	1password # Password manager that keeps all passwords secure behind one password https://1password.com
	4k-video-downloader #Free video downloader https://www.4kdownload.com/products/product-videodownloader
	adobe-creative-cloud # Collection of apps and services for photography, design, video, web, and UX https://www.adobe.com/creativecloud.html
	alfred # Application launcher and productivity software https://www.alfredapp.com/
	appcleaner # Application uninstaller https://freemacsoft.net/appcleaner/
	bartender # Menu bar icon organizer https://www.macbartender.com/
	chronosync # Synchronization and backup tool https://www.econtechnologies.com/
	# daisydisk # Disk space visualizer https://daisydiskapp.com/
	discord # Voice and text chat software https://discord.com/
	firefox # Web browser https://www.mozilla.org/firefox/
	# firefox-developer-edition #! Manual download
	# gcollazo-mongodb # App wrapper for MongoDB https://elweb.co/mongodb-app/, https://gcollazo.github.io/mongodbapp/
	gdlauncher # Custom Minecraft Launcher https://gdevs.io/
	# get-backup-pro # Backup software with folder synchronization https://www.belightsoft.com/products/getbackup/
	google-chrome # Web browser https://www.google.com/chrome/
	handbrake # Open-source video transcoder https://handbrake.fr/
	iina # Free and open-source media player https://iina.io/
	iterm2 # Terminal emulator as alternative to Apple's Terminal app https://www.iterm2.com/
	# karabiner-elements # Keyboard customizer (for Razer mouse) https://karabiner-elements.pqrs.org
	macupdater # Track and update to the latest versions of installed software https://www.corecode.io/macupdater/index.html
	# mamp # Web development solution with Apache, Nginx, PHP & MySQL https://www.mamp.info/
	microsoft-word # https://products.office.com/en-US/word
	# neo4j # Developer IDE or Management Environment for Neo4j instances https://neo4j.com/download/
	nordvpn # VPN client for secure internet access and private browsing https://nordvpn.com/
	notion # App to write, plan, collaborate, and get organized https://www.notion.so/
	nvidia-geforce-now # Cloud gaming platform https://www.nvidia.com/en-us/geforce-now/download/
	obs # Open-source software for live streaming and screen recording https://obsproject.com/
	onedrive # Cloud storage client https://onedrive.live.com/
	# paw #HTTP client that helps testing and describing APIs https://paw.cloud/
	# popsql # Collaborative SQL editor for your team https://popsql.com
	# postgres-unofficial # App wrapper for PostgreSQL https://postgresapp.com/
	# postico # GUI client for PostgreSQL databases https://eggerapps.at/postico/
	# postman # Collaboration platform for API development https://www.postman.com/
	rectangle # Move and resize windows using keyboard shortcuts or snap areas https://rectangleapp.com/
	# sequel-pro # MySQL/MariaDB database management platform https://www.sequelpro.com/
	slack # Team communication and collaboration software https://slack.com/
	# sourcetree # Graphical client for Git version control https://www.sourcetreeapp.com
	steam # Video game digital distribution service https://store.steampowered.com/about/
	# studio-3t # IDE, client, and GUI for MongoDB https://studio3t.com/
	symboliclinker # Service that allows users to make symbolic links in the Finder https://github.com/nickzman/symboliclinker
	# termius # SSH client https://www.termius.com/
	# the-unarchiver # Unpacks archive files https://theunarchiver.com/
	transmission # Open-source BitTorrent client https://transmissionbt.com/
	# vagrant # Development environment https://www.vagrantup.com/
	# vagrant-manager # Manage your vagrant machines in one place https://www.vagrantmanager.com/
	# virtualbox # Free and open-source hosted hypervisor for x86 virtualization https://www.virtualbox.org/
	visual-studio-code # Open-source code editor https://code.visualstudio.com/
	# vlc # Multimedia player https://www.videolan.org/vlc/
	vmware-fusion # App to run other operating systems without rebooting https://www.vmware.com/products/fusion.html
	zoom # Video communication and virtual meeting platform https://www.zoom.us/
)

# Install apps using Homebrew Casks
echo "Installing apps with Cask..."
brew install --cask ${apps[@]}

# TODO install our custom fonts and stuff

### Clean up Homebrew

echo "Cleaning up brew"
brew cleanup

### Install Mac App Store applications

# Have the user login to the Mac App Store first
echo "Installing apps from the App store, log in to Mac App Store to continue..."
open /System/Applications/App\ Store.app
read -p "Press [Enter] key after logging in."

#! Cannot sign in to Mac App Store using this method anymore
# mas signin --dialog jondunlap82@icloud.com

# Mac App Store applications
macapps=(
	1402042596 # AdBlock for Safari
	424390742  # Compressor
	424389933  # Final Cut Pro
	682658836  # Garage Band
	1462114288 # Grammarly for Safari
	409183694  # Keynote
	409203825  # Numbers
	409201541  # Pages
	# 1176895641 # Spark email client
)

# Install Mac apps using mas-cli https://github.com/mas-cli/mas
echo "Installing Mac Apps"
mas install ${macapps[@]}

### Set Mac settings

# TODO - find mac options to set
echo "Setting some Mac settings..."

#"Setting screenshots location to ~/Pictures/Screenshots"
defaults write com.apple.screencapture location -string "$HOME/Pictures/Screenshots"

#"Setting screenshot format to PNG"
defaults write com.apple.screencapture type -string "png"

#"Enabling the Develop menu and the Web Inspector in Safari"
defaults write com.apple.Safari IncludeDevelopMenu -bool true

# Kill the finder to implement changes
killall Finder

# TODO ask the user for how many spacers and feed that variable into this loop
# Add dock spacers then kill the dock for it to take effect
echo "Adding Dock Spacers"
for i in {1..8}; do
	defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
done

# Kill the dock to implement the changes
killall Dock

### Setup backup and restore configs from backup

# TODO - give the user the option to select their storage option and drive
# TODO - test if the config file exists before writing to it
# Create mackup config file, set directory to icloud, then restore
echo "Creating mackup config file & setting storage to iCloud"
echo -e "[storage]\nengine = icloud\ndirectory = backups/mackup" >>~/.mackup.cfg

# Restore configs from current backup (if it exists)
echo "Restoring setup from Mackup..."
mackup restore

### Install Node.js using NVM

# Create NVM folder, then install node
echo "Creating nvm folder"
mkdir ~/.nvm

echo "Installing the latest version of Node"
nvm install node

# Node global packages
packages=(
	# https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint
	eslint # Globally install eslint, run locally per project by typing `eslint --init`, or use VSCode command `Create ESLint configuration`
	nodemon # Monitor for any changes in your node.js application and automatically restart the server https://github.com/remy/nodemon
	# npkill # Easily find and remove old and heavy node_modules folders https://npkill.js.org # run using npm npkill inside of directories to clean
)

# Install Node global packages
echo "Installing global node modules"
npm install -g ${packages[@]}

echo "Done!"

# TODO install vagrant and sites folder
