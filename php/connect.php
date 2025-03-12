
<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST");
header("Content-Type: text/plain");

// Database connection
$servername = "localhost";
$username = "root";
$password = "099967";  // Use your actual MySQL password
$dbname = "test_db";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// ✅ Check if 'name' and 'address' parameters are set
if (isset($_GET['name']) && isset($_GET['address'])) {
    $name = htmlspecialchars($_GET['name']);  // Prevent XSS
    $address = htmlspecialchars($_GET['address']);

    // ✅ Send a proper response back to Flutter
    echo "Hello, $name from $address!";
} else {
    echo "Missing parameters!";
}

$conn->close();
?>

