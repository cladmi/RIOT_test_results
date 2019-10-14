Running tests on `2019.10-RC1`
==============================

All tests are run on a machine with multiple boards connected at the same time.
The build is done using `docker` through `BUILD_IN_DOCKER=1`.

To run tests the current local configuration are in place:

* Each board has a defined tty name done with `udev`.
* The Serial/adapter id is set appropriately
* Some boards are powered on and off before flashing
* esp32-wroom-32
  * `reset` gets stuck when the terminal is open
    Because of this, 'reset' is disabled when `term` is running.
  * I wait 10 seconds after flashing to be sure the test does not pass just
    because we run `test` directly after `flash`.

Configuration done through `RIOT_MAKEFILES_GLOBAL_PRE` is available in:

[tools/makefiles.pre](https://git.imp.fu-berlin.de/riot-appstore/riot-buildsystem-ci-server/blob/master/tools/makefiles.pre)


Test results
------------

Test results include all flasher failures too and is the raw results.

[failuresummary.md](failuresummary.md)
