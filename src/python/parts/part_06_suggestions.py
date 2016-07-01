def get_part(config):
    return {
	    'name': 'suggestions',
	    'steps': [
		{
		    'name': 'make the cursor into a block',
		    'instructions': [
			{'arguments': [
			    'echo right click -> options -> block']}]},
		{
		    'name': 'remove the us keyboard layout',
		    'instructions': [
			{'arguments': [
			    'echo search -> control panel -> clock language and region -> change input methods -> options']}]},
		{
		    'name': 'add the home folder to quick access',
		    'instructions': [
			{'arguments': [
			    'echo explore . -> right click on quick access -> pin current folder to quick access']}]}]}
