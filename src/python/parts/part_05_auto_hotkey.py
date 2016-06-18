part = {
    'name': 'set up autohotkey',
    'steps': [
        {
            'name': 'check out repo',
            'instructions': [
                {'arguments': [
                    'cd ~',
                    'git clone git@bitbucket.org:Cogbot/ahk.git',
                    'unlink "/cygdrive/c/Users/lukea/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup/mac-remap.ahk"',
                    'unlink "/cygdrive/c/Users/lukea/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup/main.ahk"',
                    'ln -s ahk/mac-remap.ahk "/cygdrive/c/Users/lukea/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup/mac-remap.ahk"',
                    'ln -s ahk/main.ahk
                    "/cygdrive/c/Users/lukea/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup/main.ahk"',
                    './ahk/mac-remap.ahk',
                    '"/cygdrive/c/Program Files/Autohotkey/Autohotkey.exe" ahk/main.ahk &',
                    '"/cygdrive/c/Program Files/Autohotkey/Autohotkey.exe" ahk/mac-remap.ahk &']}]}]}
