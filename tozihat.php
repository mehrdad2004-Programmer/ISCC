<?php
    require_once "modules/database/database.php";

    $db = new Database();

    $data = $db->read('courses', ["code" => $_GET['code']])[0];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>توضیحات دوره</title>
    <link rel="stylesheet" href="statics/css/bootstrap.min.css">
    <link rel="stylesheet" href="statics/css/style.css">
</head>
<body>
    <div class="container text-center mt-3">
        <img src="statics/course_poster/<?php echo $data['poster'];?>" width="30%">
    </div>
    <div class="container mt-3">
        <?php
            echo $data['description'];
        ?>
    </div>
    <div class="container mt-4">
        <table class="table table-bordered">
            <tr>
                <td>نام دوره</td>
                <td><?php echo $data['title']?></td>
            </tr>
<!--            <tr>-->
<!--                <td>مباحث</td>-->
<!--                <td>پایتون</td>-->
<!--            </tr>-->
            <tr>
                <td>مبلغ</td>
                <td><?php echo $data['amount'];?> ریال</td>
            </tr>
            <tr>
                <td>تاریخ برگذاری</td>
                <td><?php echo $data['start']?></td>
            </tr>
        </table>
    </div>
    <script src="statics/js/bootstrap.bundle.min.js"></script>
</body>
</html>