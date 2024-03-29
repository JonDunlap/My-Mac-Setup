# echo "Creating an SSH key for you..."
# ssh-keygen -t rsa
# Connecting to GitHub with SSH https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh
# Generate SSH Key https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

# echo "Please add this public key to Github \n"
# echo "https://github.com/account/ssh \n"
# read -p "Press [Enter] key after this..."

# TODO - update Mac first?

### Install Xcode Command Line Tools

# Check for XCode Command Line Tools
# Install if we don't have it
if test ! $(which xcode-select); then
	echo "Installing XCode Command Line Tools"
	xcode-select --install
fi

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
	dockutil                            # Tool for managing dock items https://github.com/kcrawford/dockutil
	fdupes                              # Identify or delete duplicate files https://github.com/adrianlopezroche/fdupes
	ffmpeg                              # Command line tools for processing video and audio files https://www.ffmpeg.org/
	git                                 # Distributed revision control system https://git-scm.com/
	htop                                # Improved top (interactive process viewer) https://htop.dev/
	mackup                              # Keep your Mac's application settings in sync https://github.com/lra/mackup
	mas                                 # Mac App Store command-line interface https://github.com/mas-cli/mas
	neofetch                            # Fast, highly customisable system info script https://github.com/dylanaraps/neofetch
	nvm                                 # Manage multiple Node.js versions https://github.com/nvm-sh/nvm
	romkatv/powerlevel10k/powerlevel10k # Powerlevel10k is a theme for Zsh https://github.com/romkatv/powerlevel10k
	trash                               # CLI tool that moves files or folder to the trash https://hasseg.org/trash/
	tree                                # Display directories as trees (with optional color/HTML output) https://mama.indstate.edu/users/ice/tree/
	wget                                # Internet file retriever https://www.gnu.org/software/wget/
	youtube-dl                          # Download YouTube videos in mp3, mp4 and other formats https://rg3.github.io/youtube-dl/
	# additional config options https://github.com/ytdl-org/youtube-dl
	zsh-autosuggestions          # Fish-like fast/unobtrusive autosuggestions for zsh
	zsh-completions              # Additional completion definitions for zsh
	zsh-history-substring-search # Zsh port of Fish shell's history search
	zsh-syntax-highlighting      # Fish shell like syntax highlighting for zsh
	zsh-you-should-use           # ZSH plugin that reminds you to use existing aliases for commands you just typed
)

# Install Brew formulaes
echo "Installing brew stuff..."
brew install ${brews[@]}

### Install Brew apps/casks

# Brew Apps/Casks
apps=(
	1password # Password manager that keeps all passwords secure behind one password https://1password.com
	# 4k-video-downloader #Free video downloader https://www.4kdownload.com/products/product-videodownloader
	# adobe-creative-cloud # Collection of apps and services for photography, design, video, web, and UX https://www.adobe.com/creativecloud.html
	alfred # Application launcher and productivity software https://www.alfredapp.com/
	android-studio
	appcleaner # Application uninstaller https://freemacsoft.net/appcleaner/
	# balenaetcher
	# blackhole-2ch
	caffeine # Utility that prevents the system from going to sleep https://intelliscapesolutions.com/apps/caffeine
	# curseforge
	# discord    # Voice and text chat software https://discord.com/
	docker # Container runtime https://www.docker.com/ #! update description
	# dosbox     # DOS emulator https://www.dosbox.com/
	dotnet-sdk # .NET Core SDK https://www.microsoft.com/net/core#macos
	eclipse-java
	fig     # VSCode style autocomplete for your terminal https://fig.io
	firefox # Web browser https://www.mozilla.org/firefox/
	# firefox-developer-edition #! Manual download
	# gcollazo-mongodb # App wrapper for MongoDB https://elweb.co/mongodb-app/, https://gcollazo.github.io/mongodbapp/
	# gdlauncher    # Custom Minecraft Launcher https://gdevs.io/
	google-chrome # Web browser https://www.google.com/chrome/
	# handbrake     # Open-source video transcoder https://handbrake.fr/
	# iina          # Free and open-source media player https://iina.io/
	imageoptim
	iterm2             # Terminal emulator as alternative to Apple's Terminal app https://www.iterm2.com/
	jetbrains-toolbox  # JetBrains tools manager https://www.jetbrains.com/toolbox-app/
	karabiner-elements # Keyboard customizer (for mouse/keyboard customization) https://karabiner-elements.pqrs.org
	macupdater         # Track and update to the latest versions of installed software https://www.corecode.io/macupdater/index.html
	# microsoft-teams
	mongodb-compass
	neo4j   # Developer IDE or Management Environment for Neo4j instances https://neo4j.com/download/
	nordvpn # VPN client for secure internet access and private browsing https://nordvpn.com/
	notion  # App to write, plan, collaborate, and get organized https://www.notion.so/
	# nvidia-geforce-now # Cloud gaming platform https://www.nvidia.com/en-us/geforce-now/download/
	# obs                # Open-source software for live streaming and screen recording https://obsproject.com/
	pdf-squeezer        # PDF compression tool https://witt-software.com/pdfsqueezer/
	popsql              # Collaborative SQL editor for your team https://popsql.com
	postgres-unofficial # App wrapper for PostgreSQL https://postgresapp.com/
	postico             # GUI client for PostgreSQL databases https://eggerapps.at/postico/
	postman             # Collaboration platform for API development https://www.postman.com/
	rectangle           # Move and resize windows using keyboard shortcuts or snap areas https://rectangleapp.com/
	sequel-pro          # MySQL/MariaDB database management platform https://www.sequelpro.com/
	slack               # Team communication and collaboration software https://slack.com/
	ssh-config-editor   #! update description
	# steam             # Video game digital distribution service https://store.steampowered.com/about/
	studio-3t      # IDE, client, and GUI for MongoDB https://studio3t.com/
	symboliclinker # Service that allows users to make symbolic links in the Finder https://github.com/nickzman/symboliclinker
	temurin        # Open source JDK from the Eclipse Foundation (Adoptium) https://adoptium.net/
	termius
	# the-unarchiver # Unpacks archive files https://theunarchiver.com/
	# transmission # Open-source BitTorrent client https://transmissionbt.com/
	# transmit         # File transfer application https://panic.com/transmit/
	vagrant            # Development environment https://www.vagrantup.com/
	vagrant-manager    # Manage your vagrant machines in one place https://www.vagrantmanager.com/
	virtualbox         # Free and open-source hosted hypervisor for x86 virtualization https://www.virtualbox.org/
	visual-studio-code # Open-source code editor https://code.visualstudio.com/
	vlc                # Multimedia player https://www.videolan.org/vlc/
	vmware-fusion      # App to run other operating systems without rebooting https://www.vmware.com/products/fusion.html
	zoom               # Video communication and virtual meeting platform https://www.zoom.us/
)

# Install apps using Homebrew Casks
echo "Installing apps with Cask..."
brew install --cask ${apps[@]}

### Install fonts

# Tap homebrew-cask-fonts https://github.com/Homebrew/homebrew-cask-fonts
echo "Tapping Homebrew cask fonts..."
brew tap homebrew/cask-fonts

# List of fonts
fonts=(
	fira-code
	meslo-lg-nerd-font
)

# Install fonts
echo "Installing fonts..."
brew install --cask ${fonts[@]/#/font-}

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
	1569813296 # 1Password for Safari
	1402042596 # AdBlock for Safari https://apps.apple.com/th/app/adblock-for-safari/id1402042596?mt=12
	# 424390742  # Compressor https://apps.apple.com/th/app/compressor/id424390742?mt=12
	# 424389933  # Final Cut Pro https://apps.apple.com/th/app/final-cut-pro/id424389933?mt=12
	# 682658836  # Garage Band https://apps.apple.com/th/app/garageband/id682658836?mt=12
	1462114288 # Grammarly for Safari https://apps.apple.com/th/app/grammarly-for-safari/id1462114288?mt=12
	# 409183694  # Keynote https://apps.apple.com/th/app/keynote/id409183694?mt=12
	# 434290957  # Motion https://apps.apple.com/th/app/motion/id434290957?mt=12
	409203825  # Numbers https://apps.apple.com/th/app/numbers/id409203825?mt=12
	409201541  # Pages https://apps.apple.com/th/app/pages/id409201541?mt=12
	1176895641 # Spark email client https://apps.apple.com/th/app/spark-email-app-by-readdle/id1176895641?mt=12
	# 497799835 # Xcode https://apps.apple.com/th/app/xcode/id497799835?mt=12
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

#! Move to dockutil/dockbuilder for setting up dock
# TODO ask the user for how many spacers and feed that variable into this loop
# Add dock spacers then kill the dock for it to take effect
# echo "Adding Dock Spacers"
# for i in {1..8}; do
# 	defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="small-spacer-tile";}'
# done

# Kill the dock to implement the changes
# killall Dock

### Setup backup and restore configs from backup

# TODO - give the user the option to select their storage option and drive
# TODO - test if the config file exists before writing to it
# Create mackup config file, set directory to icloud, then restore
# echo "Creating mackup config file & setting storage to local storage"
# echo -e "[storage]\nengine = file_system\npath = /Users/jonathandunlap/Backups\ndirectory = mackup" >>~/.mackup.cfg

# echo "Pulling backup from GitHub and saving locally"
# git clone https://github.com/JonDunlap/Backups.git ~/Backups

# Restore configs from current backup (if it exists)
echo "Restoring setup from Mackup..."
mackup restore

### Install Node.js using NVM

# Create NVM folder, then install node
# echo "Creating nvm folder"
# mkdir ~/.nvm

echo "Installing the latest version of Node"
nvm install node

# Node global packages
packages=(
	# https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint
	eslint  # Globally install eslint, run locally per project by typing `eslint --init`, or use VSCode command `Create ESLint configuration`
	nodemon # Monitor for any changes in your node.js application and automatically restart the server https://github.com/remy/nodemon
	# npkill # Easily find and remove old and heavy node_modules folders https://npkill.js.org # run using npm npkill inside of directories to clean
)

# Install Node global packages
# echo "Installing global node modules"
# npm install -g ${packages[@]}

echo "Done!"

# TODO install vagrant and sites folder
