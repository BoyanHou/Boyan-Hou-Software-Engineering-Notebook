# Install gradle: the version in apt is really old.  Lets get a new one
wget https://services.gradle.org/distributions/gradle-6.0.1-all.zip
sudo mkdir -p /opt/gradle
sudo unzip -d /opt/gradle gradle-6.0.1-all.zip
#for this time
export PATH=${PATH}:/opt/gradle/gradle-6.0.1/bin
#for the future
echo 'export PATH=${PATH}:/opt/gradle/gradle-6.0.1/bin' >> ~/.bashrc
# Add extra auto complete support to base for gradle commands
sudo apt install gradle-completion
