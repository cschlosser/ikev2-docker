# Effortless IKEv2 VPN in Docker

## Prerequisites

First step: Install docker on your system and open port 500 and 4500 for UDP traffic in your firewall.

## Option 1

Second step: Run configuration with

`docker run --rm --name=vpn-cfg -it -v /your/path/config:/config cschlosser/ikev2-vpn configure`

Fill in the blanks and everything you need will be generated for you.

Third step: Run

`docker run --rm --name=vpn -d -v /your/path/config:/config --privileged -p 500:500/udp -p 4500:4500/udp cschlosser/ikev2-vpn`

To start the vpn

## Option 2

Second step: Run

`docker run --rm --name=vpn -it -v /your/path/config:/config --privileged -p 500:500/udp -p 4500:4500/udp cschlosser/ikev2-vpn`

This will run the configuration the first time you're launching the container.

## Client setup

Last step: See this [Tutorial: Step 7 – Testing the VPN Connection on Windows, iOS, and macOS](https://www.digitalocean.com/community/tutorials/how-to-set-up-an-ikev2-vpn-server-with-strongswan-on-ubuntu-16-04#step-7-%E2%80%93-testing-the-vpn-connection-on-windows,-ios,-and-macos) on how to configure your client.

NOTE: Your certificate is stored in `/your/path/config/vpn-certs/` instead of `~/vpn-certs/`.
