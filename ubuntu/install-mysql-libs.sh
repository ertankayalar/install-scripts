#!/bin/bash

# Function to check Ubuntu version
check_ubuntu_version() {
  if [ -f /etc/os-release ]; then
    . /etc/os-release
    if [ "$ID" = "ubuntu" ]; then
      case "$VERSION_ID" in
      "22.04" | "24.04")
        return 0
        ;;
      esac
    fi
  fi
  return 1
}

# Function to install MySQL client dev libraries
install_mysql_client_dev() {
  echo "Updating package lists..."
  sudo apt update

  echo "Installing MySQL client development libraries..."
  sudo apt install -y libmysqlclient-dev mysql-client-core-8.0

  echo "MySQL client development libraries have been installed successfully."
}

# Main script
if check_ubuntu_version; then
  . /etc/os-release
  echo "Ubuntu $VERSION_ID detected. Proceeding with installation."

  case "$VERSION_ID" in
  "22.04")
    install_mysql_client_dev
    ;;
  "24.04")
    # As of now, the process is the same for 24.04
    # If it changes in the future, add specific steps here
    install_mysql_client_dev
    ;;
  esac

  echo "You can now proceed with your Rails application setup."
else
  echo "Error: This script is intended for Ubuntu 22.04 or 24.04 only."
  echo "Your system does not appear to be running a supported Ubuntu version."
  exit 1
fi
