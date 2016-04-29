def set_system(data):
    systems = ['windows 10 babun']
    print 'which system are you installing on?'
    print ''
    for index, val in enumerate(systems):
        print '%d. %s'%(index+1, val)
    print '%d. other'%(len(systems)+1)
    print ''
    system_found = False
    while(not system_found):
        try:
            system_number = int(raw_input('> '))
        except ValueError:
            print 'system number must be an integer'
            continue
        if system_number < 1:
            print 'system number must be greater than 1'
            continue
        if system_number > len(systems):
            print 'system_number must be <= to %d'%(len(systems)+1)
            continue
        system_found = True
    if system_number == len(systems) + 1:
        data['system'] = 'other'
    else:
        data['system'] = systems[system_number-1]
    return data
