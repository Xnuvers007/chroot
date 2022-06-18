# chroot
automation create chroot, the rest you can move it after it's automatically created

Why chroot ?
Because chroot can :

1. To create a test environment.
2. To recover the system or password.
3. To reinstall the bootloader.

This is a great boost in the security.

  - sudo apt-get update -y
  - sudo apt-get upgrade -y
  - sudo apt-get install bash -y
  - git clone https://github.com/Xnuvers007/chroot
  - cd chroot
  - chmod +x main.sh
  - ./main.sh
