# Vagrant automated VM for Indy development

This repo documents how was created the image panickervinod/ubuntu-16.04-desktop-development

This image is an Ubuntu Desktop 16.04 LTS plus:
  -  git
  -  firefox, chromium, chromium-chromedriver
  -  autoupdate system

Context:
  -  Base image is *vagrant init bento/ubuntu-16.04*
  -  Image is optimized for Virtual Box, but not restricted to
  -  Make sure ssh and VBox are in path
  -  Default configuration for VM es 4G RAM, 4 core, bidireccional clipboard, active GUI

If you want to generate a new image based on this one:
  -  clone this repo
  -  vagrant plugin install vagrant-reload
  -  vagrant up
