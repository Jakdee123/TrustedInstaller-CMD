# TrustedInstaller CMD

What it does is essentially is it starts a cmd process with TrustedInstaller as it's parent so it has TrustedInstaller privileges


You have to run it as administrator for it to work. (Unless you already have the TrustedInstaller service running)

If it gives you the error:
[SC] StartService FAILED 1056:

An instance of the service is already running.

Ignore it. It doesn't mean anything bad



To use the script you need the module NtObjectManager. To install it, open powershell as administrator and run:
```batch
Install-Module -Name NtObjectManager -RequiredVersion 1.1.32
```
(say yes to everything)

Then run

```batch
Import-Module NtObjectManager
```
and you are good to go
