<?php
include_once 'hawaii.html';
require_once 'login.php';
$conn=mysqli_connect($host,$user,$pass,$db);
// Check connection
if (mysqli_connect_errno())
{
echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$result = mysqli_query($conn,"SELECT * FROM catalog where City ='Maui'");

echo "<table border='1'>
<tr>
<th>Hotel Name</th>
<th>Location</th>
<th>Street Address</th>
<th>Rating</th>
<th>Price</th>
<th>Details</th>
</tr>";

while($row = mysqli_fetch_array($result))
{
echo "<tr>";
echo "<td>" . $row['Hotel Name'] . "</td>";
echo "<td>" . $row['Location'] . "</td>";
echo "<td>" . $row['Street Address'] . "</td>";
echo "<td>" . $row['Rating'] . "</td>";
echo "<td>" . $row['Price'] . "</td>";
echo "<td>" . $row['Details'] . "</td>";
echo "</tr>";
}
echo "</table>";

mysqli_close($conn);
?>