<?php
if(!empty($_POST)){
    // add the card to the database
    $db = new pdo('mysql:dbname=ambility_flashcards;host=localhost', 'ambility_main', '99wcisftw123');
    $stmt = $db->prepare('INSERT INTO `flashcards` (`english`, `pinyin`, `hanzi`) VALUES (?,?,?)');
    $stmt->execute(array($_POST['english'], $_POST['pinyin'], $_POST['hanzi']));
}

$db = new pdo('mysql:dbname=ambility_flashcards;host=localhost', 'ambility_main', '99wcisftw123');
$stmt = $db->prepare('SELECT * FROM `flashcards`');
$stmt->execute();
$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
	
?>
<!doctype html>
<html lang="en">
    <head>
        <title>Add a New Card</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" href="css/main.css">
        <meta charset="utf-8">
    </head>
    <body>
        <form action="add.php" method="post">
            <input type="text" name="english" placeholder="English">
            <input type="text" name="pinyin" placeholder="Pinyin">
            <input type="text" name="hanzi" placeholder="hanzi">
            <input type="submit" value="Create Card">
        </form>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>id</th>
					<th>english</th>
					<th>pinyin</th>
					<th>hanzi</th>
				</tr>
			</thead>
			<tbody>
				<?php
					foreach($result as $row){
				?>
					<tr>
						<td><?php echo $row['id']; ?></td>
						<td><?php echo $row['english']; ?></td>
						<td><?php echo $row['pinyin']; ?></td>
						<td><?php echo $row['hanzi']; ?></td>
					</tr>
				<?php
					}
				?>
			</tbody>
		</table>
		
    </body>
</html>
