use elearning;
-- Insert mock data for table `badge`
INSERT INTO `badge` (`badgeName`, `badgeImage`) VALUES
  ('Badge 1', 'badge1.jpg'),
  ('Badge 2', 'badge2.jpg'),
  ('Badge 3', 'badge3.jpg');

-- Insert mock data for table `instructor`
INSERT INTO `instructor` (`full_name`, `username`, `email`, `password`, `profile`) VALUES
  ('John Doe', 'john_doe', 'john@example.com', 'password123', 'instructor1.jpg'),
  ('Jane Smith', 'jane_smith', 'jane@example.com', 'password456', 'instructor2.jpg');

-- Insert mock data for table `course`
INSERT INTO `course` (`InstructorID`, `Title`, `Description`, `File`, `Image`, `StartDate`, `EndDate`) VALUES
  (1, 'Course 1', 'Description for Course 1', 'course1.pdf', 'course1.jpg', '2023-01-01', '2023-02-01'),
  (2, 'Course 2', 'Description for Course 2', 'course2.pdf', 'course2.jpg', '2023-02-01', '2023-03-01');

-- Insert mock data for table `users`
INSERT INTO `users` (`full_name`, `username`, `email`, `password`, `profile`) VALUES
  ('User 1', 'user1', 'user1@example.com', 'password789', 'user1.jpg'),
  ('User 2', 'user2', 'user2@example.com', 'passwordabc', 'user2.jpg');

-- Insert mock data for table `enrollment`
INSERT INTO `enrollment` (`courseID`, `userID`, `supportID`, `enrollmentDate`, `cancelled`, `cancellationReason`, `instructorID`) VALUES
  (1, 1, NULL, '2023-01-02', NULL, NULL, 1),
  (2, 2, NULL, '2023-02-02', 'Yes', 'Schedule conflict', 2);

-- Insert mock data for table `support`
INSERT INTO `support` (`full_name`, `username`, `password`, `email`, `profile`) VALUES
  ('Support 1', 'support1', 'supportpass1', 'support1@example.com', 'support1.jpg'),
  ('Support 2', 'support2', 'supportpass2', 'support2@example.com', 'support2.jpg');

-- Insert mock data for table `forums`
INSERT INTO `forums` (`userID`, `instructorID`, `title`, `description`, `datePosted`) VALUES
  (1, 1, 'Forum 1', 'Discussion for Course 1', '2023-01-05 10:00:00'),
  (2, 2, 'Forum 2', 'Discussion for Course 2', '2023-02-05 12:00:00');

-- Insert mock data for table `forum_comments`
INSERT INTO `forum_comments` (`forumID`, `userID`, `instructorID`, `description`, `dateCommented`) VALUES
  (1, 1, 1, 'Comment on Forum 1', '2023-01-06 11:00:00'),
  (2, 2, 2, 'Comment on Forum 2', '2023-02-06 13:00:00');

-- Insert mock data for table `quiz`
INSERT INTO `quiz` (`courseID`, `userID`, `title`, `description`, `file`, `startDate`, `endDate`, `score`) VALUES
  (1, 1, 'Quiz 1', 'Quiz for Course 1', 'quiz1.pdf', '2023-01-10', '2023-01-15', 85.5),
  (2, 2, 'Quiz 2', 'Quiz for Course 2', 'quiz2.pdf', '2023-02-10', '2023-02-15', 92.0);

-- Insert mock data for table `certification`
INSERT INTO `certification` (
  `certificateSerialNo.`,
  `courseID`,
  `userID`,
  `instructorID`,
  `supportID`,
  `dateIssued`,
  `certificateFile`,
  `badgeID`,
  `criteria`
) VALUES
  (123456, 1, 1, 1, NULL, '2023-01-20', 'certificate1.pdf', 1, 'Completion of Course 1'),
  (789012, 2, 2, 2, NULL, '2023-02-20', 'certificate2.pdf', 2, 'Completion of Course 2');
