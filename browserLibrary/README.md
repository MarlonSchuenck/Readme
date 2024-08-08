KEYWORD DOCS
https://marketsquare.github.io/robotframework-browser/Browser.html

INSTALLATION

DEPENDENCIES
    Library installation requires both Python and NodeJs
        Install Python™
        Install Node.js®

INSTALLATION

    Library can be installed in two different modes, each library installation will also include browser binaries or browser binaries are managed outside of the library. Example for CI installation, where environment may contain multiple library installation, it is beneficial to manage browser binaries outside of the library installation. This will option saves disk space in the environment, because each environment contains only one set of browsers binaries. When installation is done for test case development, it is better to install browser binaries with the library.

    Install library with browser binaries.

    Install Browser library from PyPi with pip:
    > pip install robotframework-browser
    Initialize the Browser library:
    > rfbrowser init
    Install library when browsers binaries are installed separately to non standard location.

    Install Browser library from PyPi with pip:
    > pip install robotframework-browser
    Initialize the Browser library and skip browsers installation:
    > rfbrowser init --skip-browsers
    Install browser binaries separately according Playwright instructions. Example:
    > PLAYWRIGHT_BROWSERS_PATH=$HOME/pw-browsers npx playwright install
    Run test with PLAYWRIGHT_BROWSERS_PATH set. Example:
    > PLAYWRIGHT_BROWSERS_PATH=$HOME/pw-browsers robot path/to/test

UPDATE

    The update procedure depends on which way the library is installed, with or without the browser binaries.

    Update library with browser binaries.

    Install Browser library from PyPi with pip:
    > pip install --upgrade robotframework-browser
    Clean old browser binaries and node dependencies:
    > rfbrowser clean-node
    Initialize the Browser library with new node dependencies:
    > rfbrowser init
    Update library when browsers binaries are installed separately to non standard location.

    Install Browser library from PyPi with pip:
    > pip install --upgrade robotframework-browser
    Clean node dependencies:
    > rfbrowser clean-node
    Initialize the Browser library with new node dependencies:
    > rfbrowser init --skip-browsers
    Install browser binaries separately according Playwright instructions. Example:
    > PLAYWRIGHT_BROWSERS_PATH=$HOME/pw-browsers npx playwright install
    Run test with PLAYWRIGHT_BROWSERS_PATH set. Example:
    > PLAYWRIGHT_BROWSERS_PATH=$HOME/pw-browsers robot path/to/test

UNINSTALL

    Uninstall procedure is same for both installation way, but if browser binaries are managed separately, user must delete browser binaries manually.

    Clean old browser binaries and node dependencies:
    > rfbrowser clean-node
    Uninstall with pip:
    > pip uninstall robotframework-browser
    If browser binaries are manages separately, user must delete binaries manually, example:
    > rm -rf $HOME/pw-browsers