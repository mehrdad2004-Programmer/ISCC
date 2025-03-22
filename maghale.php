<?php
    require_once __DIR__ . "/modules/database/database.php";

    $db = new Database();

    $data = $db->read('articles', ["code='" . $_GET['code'] . "'"])[0];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>maghalat</title>
    <link rel="stylesheet" href="statics/css/bootstrap.min.css">
    <link rel="stylesheet" href="statics/css/style.css">
</head>
<body>
    <div class="container border border-2 p-4 mt-2 shadow">
        <div class="container text-center p-2">
            <img src="statics/img/images.jpg">
        </div>
        <div class="container text-center">
            <h1><?php echo $data['title'];?></h1>
        </div>
        <div class="container date text-right mt-3">
            <span>تاریخ انتشار : </span>
            <span><?php echo $data['date'];?></span>
        </div>
        <div class="container mt-3 text-justified">
            <?php echo $data['text'];?>
        </div>
        <div class="container mt-4 d-flex mt-3 border border-2 rounded-3 p-2">
            <div class="">
                <img class="image" src=<?php echo "statics/img/" . $data['poster'];?>>
            </div>
            <div class="container">
                <div class="container">
                    <span><?php echo $data['author'];?></span>
                </div>
                <div class="container">
                    <span>نویسنده</span>
                </div>
            </div>
        </div>
    </div>
    <script src="statics/js/bootstrap.bundle.min.js"></script>
</body>
</html>