<?php
    if(isset($_SERVER['PATH_INFO']) && $_SERVER['PATH_INFO'] == '/json' ){
        header('Content-Type: application/json');
        require_once('mysql.php');
        $stmt = $db->prepare('SELECT * FROM flashcards');
        $stmt->execute();
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($result);
    } else {
?>
<!doctype html>
<html lang="en">
    <head>
        <title>Chinese Flash Cards</title>
        <meta charset="utf-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="main.css">
        <script src="main.js"></script>
    </head>
    <body>
        <div id="deck" data-card="0">
            <!-- DATA FROM JSON INSERTED HERE -->
        </div>
        <div id="display-first-container">
            <select id="display-first">
                <option value="english">English</option>
                <option value="pinyin">Pinyin</option>
                <option value="hanzi">Hanzi</option>
            </select>
        </div>
        <div id="display-side-options">
            <div class="options-col">
                <button id="show-english" class="btn btn-secondary">Show English</button>
            </div>
            <div class="options-col">
                <button id="show-pinyin" class="btn btn-secondary">Show Pinyin</button>
            </div>
            <div class="options-col">
                <button id="show-hanzi" class="btn btn-secondary">Show Hanzi</button>
            </div>
        </div>
        <div id="show-next-container">
            <button id="show-next" class="btn btn-primary">Show Next Card</button>
        </div>
    </body>
</html>
<?php
    }
?>
