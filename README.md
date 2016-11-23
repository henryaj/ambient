# Ambien

_For a sounder sleep_

(BOSH Lite)[https://github.com/cloudfoundry/bosh-lite] tends to die when your machine goes to sleep and wakes up.

Ambien suspends your BOSH Lite VM on system sleep, and resumes it on system wake.

## Usage

Install with:

`$ ./install.sh`

This will `brew install sleepwatcher`, a daemon that watches for changes to system power management status, copy two scripts to `~/.ambien-bosh-lite-{sleep|wake}`, and binds these scripts to the sleep/wake hooks that `sleepwatcher` exposes.

Use the uninstall script to remove the tool.

## Caveats

Making a new GitHub repo called `ambien` will briefly get your account suspended. Good times!
