<?php
session_start();

if (!isset($_SESSION['username'])) {
    header("Location: login.php");
    exit();
}

$role = $_SESSION['role'];

// Check if there's an error message from trying to access the admin form
if (isset($_SESSION['error_message'])) {
    echo "<p style='color: red;'>" . $_SESSION['error_message'] . "</p>";
    unset($_SESSION['error_message']);  // Clear the message after displaying it
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
</head>
<body>
    <h2>Welcome to the Dashboard, <?php echo $_SESSION['username']; ?>!</h2>

    <?php if ($role == 'admin') : ?>
        <p>You are an admin. You have full access.</p>
    <?php else : ?>
        <p>You are a user. You have limited access.</p>
    <?php endif; ?>
    
    <!-- Button to access the Admin-Only Form for both roles -->
    <form action="admin_form.php" method="get">
        <button type="submit">Please Open</button>
    </form>

    <a href="logout.php">Logout</a>
</body>
</html>
