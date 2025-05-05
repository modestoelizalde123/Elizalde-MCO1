<?php
session_start();

// Allow both admin and user to access this page
if (!isset($_SESSION['username'])) {
    header("Location: index.php");
    exit();
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard</title>
</head>
<body>
    <h2>Welcome to the User Dashboard, <?php echo $_SESSION['username']; ?>!</h2>

    <p>This is the user dashboard.</p>

    <a href="dashboard.php">Back to Main Dashboard</a>
</body>
</html>
