def get_part(config):
    return {
	    'name': 'suggestions',
	    'steps': [
		{
		    'name': 'add the home folder to quick access',
		    'instructions': [
			{'arguments': [
			    'echo explore . -> right click on quick access -> pin current folder to quick access']}]}]}
