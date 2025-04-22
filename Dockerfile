FROM linuxmintd/mint20-amd64:latest

# Install dependencies for SDDM and git
RUN apt-get update && apt-get install -y \
    sddm \
    libqt5quickcontrols2-5 \
    qml-module-qtquick-controls \
    qml-module-qtquick-controls2 \
    git \
    && rm -rf /var/lib/apt/lists/*

# Copy the install script
COPY ./install-sddm-simplicity.sh /install-sddm-simplicity.sh
RUN chmod +x /install-sddm-simplicity.sh

# Run the install script
CMD ["/install-sddm-simplicity.sh"]
