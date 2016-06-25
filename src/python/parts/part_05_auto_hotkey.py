import subprocess

home_name = subprocess.check_output('realpath ~', shell=True).replace("\n", '').split('/')[-1]

part = {
    'name': 'set up autohotkey',
    'steps': [
        {
            'name': 'check out repo',
            'instructions': [
                {'arguments': [
                    'cd ~',
                    'rm -rf ahk',
                    'git clone git@bitbucket.org:Cogbot/ahk.git',
                    'explore ahk/shortcuts',
                    'explore "/cygdrive/c/Users/%s/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup/mac_remap_shortcut.lnk"' % home_name]}]},
        {
            'name': 'startup scripts',
            'instructions': [
                {'arguments': [
                    '"/cygdrive/c/Program Files/Autohotkey/Autohotkey.exe" ahk/main.ahk &',
                    '"/cygdrive/c/Program Files/Autohotkey/Autohotkey.exe" ahk/mac-remap.ahk &']}]}]}
