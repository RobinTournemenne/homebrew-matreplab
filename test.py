import re

VERSIONFILE = "_version.py"
verstr = "unknown"
try:
    verstrline = open(VERSIONFILE, "rt").read()
except EnvironmentError:
    pass # Okay, there is no version file.
else:
    VSRE = r"^__version__ = ['\"]([^'\"]*)['\"]"
    mo = re.search(VSRE, verstrline, re.M)
    if mo:
        verstr = mo.group(1)
    else:
        print("unable to find version in " + VERSIONFILE)
        raise RuntimeError("if _version.py exists, it is required to be well-formed")
print(verstr)
