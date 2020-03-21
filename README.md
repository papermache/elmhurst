Elmhurst Nonprofit Bank is a 501(c)3 philanthropic brokerage and the first organization of its kind to provide financial products and services exclusively to nonprofits and individuals. 


The primary purpose of this repository is to simulate market mechanics for account holders, potential clients, and our own forecasts.

Note: *this repository is for simulation purposes and paper trading only. No routing or deposit functionality is built in yet.* 

A live version is located at www.elmhur.st

To Access the Build:

Account credentials are in Trello by way of Slack.

For those who already have access:

Please push changes to both AWS and GitHub.

GitHub branch: Elmhurst_new_changes
AWS instance: New_Elmhurst_Instance

We will probably establish new GitHub branches with different versions in the future.

Steps to deploy:

1: ssh -i  PEMFILE ubuntu@35.164.187.50
(using terminal)
2:  Go to "elmhurst" folder
3: git pull for pulling data from github
4:  Restart Puma "bundle exec pumactl -P /home/deploy/.pids/puma.pid restart"
5:  Restart Nginx "sudo service nginx restart"

If you perform work on Elmhurst’s Simulation please update your location at https://drive.google.com/open?id=1h4IOIvdOrF8KDY3Wef4CHhliyjRsgass&usp=sharing 
in addition to using Freelancer.com’s time tracker.

