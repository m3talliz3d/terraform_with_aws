add-content -path %userprofile%\.ssh\config -value @'

    Host $(hostname)
        HostNsme $(hostname)
        User $(user)
        IdentityFile $(identityfile)
    '