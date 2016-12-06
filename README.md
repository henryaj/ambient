# Ambient :pill:

_For a sounder sleep_

**Hey! This is currently very alpha. Things may break. More specifically, the time on your BOSH Lite-deployed VMs may drift. Let me know if it works for you, or if you have problems.**

[BOSH Lite](https://github.com/cloudfoundry/bosh-lite) tends to die when your machine goes to sleep and wakes up.

Ambient suspends your BOSH Lite VM on system sleep, and resumes it on system wake.

## Usage

Install with `./install.sh`.

This will:

* `brew install sleepwatcher`, a daemon that watches for changes to system power management status, and add it to launchctl
* copy two scripts to `~/.bosh-lite-{sleep|wake}`
* bind these scripts to the sleep/wake hooks that `sleepwatcher` exposes

Use the uninstall script to remove the tool.

## Caveats

If BOSH Lite is already suspended, nothing will happen on system sleep, but your BOSH Lite _will_ be resumed when the system wakes. This may not be what you want.

Making a new GitHub repo called `ambien` will briefly get your account suspended. Good times!
