<?php
if(!empty($_POST)){
    // add the card to the database
    $db = new pdo('mysql:dbname=ambility_flashcards;host=localhost', 'ambility_main', '99wcisftw123');
    $stmt = $db->prepare('INSERT INTO `flashcards` (`english`, `pinyin`, `hanzi`) VALUES (?,?,?)');
    $stmt->execute(array($_POST['english'], $_POST['pinyin'], $_POST['hanzi']));
}
?>
<!doctype html>
<html lang="en">
    <head>
        <title>Add a New Card</title>
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
    </body>
</html>
