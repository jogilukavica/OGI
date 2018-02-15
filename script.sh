#!/bin/bash

curl  https://api.github.com/repos/jogilukavica/OGI/commits?since=2018-01-01T00:00:00Z >> CommitHistory.txt

recipients="ognjen.pandzic@gmail.com Ognjen.Pandzic@yahoo.com.com"
subject="...Git Commits for Ognjen Pandzic..."

cat CommitHistory.txt | mail -s $subject $recipients
