# OpenDNS Umbrella - Blacklist adding script

OpenDNS Umbrella is cool if you want to provide some malware/phishing domain protection for your home, small office etc
But you can also add domains to a blocklist too, this can be useful for upstream add blocking for example

### How to Use

- Go to [login.opendns.com](https://login.opendns.com)
- Login and obtain the hex string from your `OPENDNS_ACCOUNT` cookie
- Add this to the placeholder in the cookies.txt file in this repository
- Then run the script like this
  ```sh
	$ ./add_domain.sh 130643670 doubleclick.net
	{"domain":"doubleclick.net","message":"Domain added to blocklist;\n        will take effect in 3 minutes.","domain_id":"<someid>","success":true}
  ```

### Notes

- I haven't run this over a large bulk of domains, you may (and should be) rate-limited by their API if you make too many requests
