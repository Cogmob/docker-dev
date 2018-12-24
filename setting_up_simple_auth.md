create the password file

    sudo apt-get install apache2 apache2-utils
    sudo htpasswd -c /etc/apache2/.htpasswd sammy

edit the allowed hosts

    sudo vim /etc/apache2/sites-enabled/000-default.conf

add this at the bottom

        <Proxy *>                                                                                                                                                        │            │  ~                                                                                                                                                                                 │
    │       Order deny,allow                                                                                                                                             │            │  ~                                                                                                                                                                                 │
    │       Allow from all                                                                                                                                               │            │  ~                                                                                                                                                                                 │
    │       Authtype Basic                                                                                                                                               │            │  ~                                                                                                                                                                                 │
    │       Authname "Password Required"                                                                                                                                 │            │  ~                                                                                                                                                                                 │
    │       AuthUserFile /etc/apache2/.htpasswd                                                                                                                          │            │  ~                                                                                                                                                                                 │
    │       Require valid-user                                                                                                                                           │            │  ~                                                                                                                                                                                 │
    │   </Proxy>                                                                                                                                                         │            │  ~                                                                                                                                                                                 │
    │                                                                                                                                                                       │            │  ~                                                                                                                                                                                 │
    │   ProxyRequests on                                                                                                                                                 │            │  ~                                                                                                                                                                                 │
    │   ProxyPass / http://localhost:3001/                                                                                                                               │            │  ~                                                                                                                                                                                 │
    │   DocumentRoot /home/cogmob/mobile-ui      
    </VirtualHostA>

restart apache

    sudo service apache2 restart
