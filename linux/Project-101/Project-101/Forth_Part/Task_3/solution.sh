#!/bin/bash

grep "Invalid user" auth.log | cut -d' ' -f8 | uniq -c > invalid_user.sh

grep "Invalid user" auth.log | cut -d' ' -f9 | uniq -c >> invalid_user.sh

cat invalid_user.sh | grep -v "from" | grep -v "user" > new_invalid_user.txt

# After you run this comman you'll see invalid_user.sh and new_invalid_user.sh files. Second one is the result.