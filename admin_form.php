<?php
session_start();

// Only allow admin to access this page
if (!isset($_SESSION['username'])) {
    header("Location: index.php");
    exit();
}

// If the user is not an admin, redirect to the dashboard with an error message
if ($_SESSION['role'] !== 'admin') {
    $_SESSION['error_message'] = "You do not have access in this form.";
    header("Location: dashboard.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin-Only Form</title>
</head>
<body>
    <h2>Welcome <?php echo $_SESSION['username']; ?>!</h2>

    <p>This form is restricted to admin users only.</p>

    <a href="dashboard.php">Back to Dashboard</a>
</body>
</html>
