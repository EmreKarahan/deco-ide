# Install General Dependencies
sudo apt install git 

# Install Ruby Bundler
sudo apt install ruby-dev ruby-bundler

# Install Node
sudo apt install nodejs-legacy npm

# ===========

# Clone Repo
git clone https://github.com/decosoftware/deco-ide.git

# Web
cd deco-ide/web
npm install
bundle install

# Desktop
cd ../desktop
npm install
# ? npm run copy-libs

cd deco_unpack_lib
mkdir -p ~/.config/com.decosoftware.Deco/libs
cp -R * ~/.config/com.decosoftware.Deco/libs

# Shared
cd ../../shared

# Stub out Deco binary
cd ~/.config/com.decosoftware.Deco/libs/binaries
mv Deco _Deco
touch Deco
chmod +x Deco


# ==========

# Install react-native-cli
sudo npm install -g react-native-cli

# Installing Android Studio prereqs (if on 64-bit Ubuntu)
sudo apt-get install lib32z1 lib32ncurses5 lib32bz2-1.0 lib32stdc++6

# Install JDK
sudo apt-get install default-jdk
