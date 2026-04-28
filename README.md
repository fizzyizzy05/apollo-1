# Apollo
Apollo is a Arch Linux-based bootc image designed to be a reliable, easy to use and up to date operating system for users as well as a base for others to build tailored experiences off of.

<img width="1920" height="1200" alt="A screenshot of a booted Apollo system running hyfetch and bootc status" src="https://github.com/user-attachments/assets/791db1cc-a5c8-4a68-9b43-2266acd92167" />

## Current status
Apollo is in an experimental pre-alpha state. Use with caution; stability is not guaranteed at this time and basic things *will* be missing. You should be fully prepared to report bugs and in general, help is appreciated.

## Installing.
WIP, ISOs are being worked on.

## Building

In order to get a Apollo .img you can run the following steps:
```shell
just build-containerfile # This will build the containerfile and all the dependencies you need
just generate-bootable-image # Generates a bootable image for you using bootc!
```

Then you can run the `bootable.img` as your boot disk in your preferred hypervisor. GNOME Boxes is recommended and can be installed as a flatpak with minimal effort.

## Credits
- [bootcrew](https://github.com/bootcrew/) for providing an arch-bootc based image.
- Arch Linux for providing a package base for Apollo.
- Universal Blue for many important parts of the project, such as their homebrew image
