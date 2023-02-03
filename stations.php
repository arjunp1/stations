<!DOCTYPE html>
<html>
<head>
<style>
table, td, th {
border-collapse: collapse;
border: 1px solid black;
}
td {
padding: 8px;
}
</style>
</head>
<body>
<?php
try {
$db = new PDO('mysql:host=localhost;dbname=Stations; charset=utf8', 'root', '' );
$db->setAttribute (PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$db->setAttribute (PDO::ATTR_EMULATE_PREPARES, false);

echo '<table>';
foreach ($db->query('SELECT * FROM station') as $station) {
echo '<tr>';
echo '<td>'.$station['name'].'</td>';
echo '<td><a href="'.$station['wp_link'].'">'.$station['wp_link'].'</a></td>';
echo '</tr>';
}
echo '</table>';

} catch(PDOException $e) {
die("<h3>I'm sorry, Dave. I'm afraid I can't do that.</hn3>" . $e->getMessage());
}
$db->connection = null;
?>
</body>
</html>