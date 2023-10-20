#!/bin/bash

# Define the task command or script
TASK_COMMAND="/path/to/your/script.sh"

# Define the schedule (e.g., run the task every day at 2:00 AM)
CRON_SCHEDULE="0 2 * * *"

# Add the task to the user's crontab
(crontab -l 2>/dev/null ; echo "$CRON_SCHEDULE $TASK_COMMAND") | crontab -

echo "Task has been scheduled for automation."

# Run the task immediately
$TASK_COMMAND

echo "Task has been executed."



* * * * *
- - - - -
| | | | |
| | | | +----- Day of the week (0 - 6) (Sunday=0)
| | | +------- Month (1 - 12)
| | +--------- Day of the month (1 - 31)
| +----------- Hour (0 - 23)
+------------- Minute (0 - 59)
