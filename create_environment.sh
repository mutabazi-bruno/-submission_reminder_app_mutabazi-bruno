#!/bin/bash

# Create the necessary directories
mkdir -p submission_reminder_app/app
mkdir -p submission_reminder_app/modules
mkdir -p submission_reminder_app/assets
mkdir -p submission_reminder_app/config

# Create the files if they do not exist
touch submission_reminder_app/app/reminder.sh \
      submission_reminder_app/modules/functions.sh \
      submission_reminder_app/assets/submissions.txt \
      submission_reminder_app/config/config.env \
      submission_reminder_app/startup.sh

# Check if the file contains a header, if not, add it
if ! grep -q "student, assignment, submission status" submission_reminder_app/assets/submissions.txt; then
    echo "student, assignment, submission status" >> submission_reminder_app/assets/submissions.txt
fi

# Check if the student records are already in submissions.txt
if ! grep -q "Patric,CS101,submitted" submission_reminder_app/assets/submissions.txt; then
    # Add 5 student records to the correct submissions.txt file in assets
    echo "Patric,CS101,submitted" >> submission_reminder_app/assets/submissions.txt
    echo "yvan,CS102,not submitted" >> submission_reminder_app/assets/submissions.txt
    echo "Claude,CS103,submitted" >> submission_reminder_app/assets/submissions.txt
    echo "Mugabo,CS104,not submitted" >> submission_reminder_app/assets/submissions.txt
    echo "Peter,CS105,submitted" >> submission_reminder_app/assets/submissions.txt
fi

# Optional: Add an image file
touch submission_reminder_app/image.png

echo "Environment created successfully!"
