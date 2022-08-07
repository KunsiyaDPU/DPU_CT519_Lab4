<?php
if(isset($_GET['movie_id'])) {
 $id = $_GET['movie_id'];
}else{
  $id = null;
}

$mysql_hostname = "10.1.1.22";
$mysql_user = "KSY";
$mysql_password = "p@ssword";
$mysql_database = "CT519_Movie";
$bd = mysqli_connect($mysql_hostname, $mysql_user, $mysql_password,$mysql_database) or die("Could not connect database");

if (!$bd) {
  die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully".'<br>';

if($id>0)
{
$sql_stmt = "select * from Movie_Name Left Join Movie_Type on Movie_Type.Type=Movie_Name.Type where id=".$id;

}else
{
$sql_stmt = "select * from Movie_Name Left Join Movie_Type on Movie_Name.Type=Movie_Type.Type";
}

$result=mysqli_query($bd,$sql_stmt);
if(!$result)
{
die("Database access failed".mysqli_error());
} 

$rows=mysqli_num_rows($result);

if($rows){
echo '<!DOCTYPE html><html lang="en-US"><head><title>CT519 Lab2</title></head><body>';
echo '<h1>Hello I am  Kunsiya</h1>';
echo '<h3>This page is dump database</h3>';

 while($row = mysqli_fetch_array($result)){
   echo 'Tile: '.$row['Title'].'<br>';
   echo 'Director: '.$row['Director'].'<br>';
   echo 'Type: '.$row['Type'].'<br>';
   echo 'Tailer: <a href="'.$row['Tailer'].'" target="_blank">'.$row['Tailer'].'</a><br><br>';
 }

echo '<button onclick="myFuction()">SQL statement to DB</button>'.PHP_EOL ;
echo '<script type="text/Javascript">' .PHP_EOL. 'function myFuction(){alert("'.$sql_stmt.'");}' .PHP_EOL. '</script>';
echo '</body></html>';
}

//Free result set
mysqli_free_result($result);
mysqli_close($bd);
?>
