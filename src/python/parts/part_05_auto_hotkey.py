part = {
    'name': 'set up autohotkey',
    'steps': [
        {
            'name': 'check out repo',
            'instructions': [
                {'arguments': [
                    'cd ~',
                    'git clone git@bitbucket.org:Cogbot/ahk.git',
                    'rm "/cygdrive/c/Users/lukea/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup/mac-remap.ahk"',
                    'rm "/cygdrive/c/Users/lukea/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup/main.ahk"',
                    'cp ahk/mac_remap_shortcut.lnk "/cygdrive/c/Users/lukea/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup/mac_remap_shortcut.lnk"',
                    'cp ahk/main_shortcut.lnk "/cygdrive/c/Users/lukea/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup/main_shortcut.lnk"',
                    './ahk/mac-remap.ahk',
                    '"/cygdrive/c/Program Files/Autohotkey/Autohotkey.exe" ahk/main.ahk &',
                    '"/cygdrive/c/Program Files/Autohotkey/Autohotkey.exe" ahk/mac-remap.ahk &']}]}]}
