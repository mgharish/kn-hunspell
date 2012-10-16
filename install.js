var err = initInstall("Hindi", "kn-hunspell@mgharish.addons.mozilla.org", "2.1");
if (err != SUCCESS)
    cancelInstall();

var fProgram = getFolder("Program");
err = addDirectory("", "kn-hunspell@mgharish.addons.mozilla.org",
		   "dictionaries", fProgram, "dictionaries", true);
if (err != SUCCESS)
    cancelInstall();

performInstall();
