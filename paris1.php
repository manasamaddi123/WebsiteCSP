<?php
include_once 'paris.html';
require_once 'login.php';
?>

<form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>">
  Show hotels within this price: <input type="int" name="fprice">
  <input type="submit">
</form>

<?php

$price = 0;

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // collect value of input field
    $price = $_POST['fprice'];
    if (empty($price)) {
        echo "Price is empty</br></br>";
    } else {
        echo "Showing results within $" . $price . "</br></br>";//need to write sorting code here
    }
}

$conn=mysqli_connect($host,$user,$pass,$db);
// Check connection
if (mysqli_connect_errno())
{
echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

if ($price == 0 or empty($price))
    $result = mysqli_query($conn,"SELECT * FROM catalog where City ='Paris'");
else    
    $result = mysqli_query($conn,"SELECT * FROM catalog where City ='Paris' and Price <= $price");

echo "<table border='1'>
<tr>
</tr>";

while($row = mysqli_fetch_array($result))
{
echo "<tr>";
echo "<td width=500>" . "<b><font size=4>" . $row['Hotel Name'] . "</b><br/><br/>" . $row['Street Address'] . "<br/><br/>" . $row['Location'] . "<br/><br/>" . $row['Details'] . "</td>";
echo "<td width=100 align=center>" . "<b><font size=6>" . $row['Rating'] . "</font></b><br/><br/>" . "$". $row['Price'] . "</td>";
echo "<td width=100 align=center><button type = button>Book</button></td>";
echo "</tr>";
}
echo "</table>";

mysqli_close($conn);
?>

