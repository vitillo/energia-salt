powergadget:
  3.00.5:
    full_name: 'Intel Power Gadget 3.0'
    reboot: False
    msiexec: True
    installer: 'salt://win/repo/powergadget/PowerGadget.msi'
    install_flags: ' TARGETDIR=C:\PowerGadget /qb'
    uninstaller: 'salt://win/repo/powergadget/PowerGadget.msi'
    uninstall_flags: ' /qb'
