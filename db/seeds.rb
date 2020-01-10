# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
   logs = Log.create(workouts: 'Swimming, Running, SitUps' ,  time: 160)
   comment = Comment.create(text: 'Wow, today\'s workout set was hard.', log_id: 1)
