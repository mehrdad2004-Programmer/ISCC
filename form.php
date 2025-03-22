<?php
    require_once __DIR__ . "/modules/database/database.php";
    require_once __DIR__ . "/modules/jdate/jdf.php";

    $db = new Database();
    $data = $db->read('courses', ["code='" . $_GET['code'] . "'"])[0];

    if(isset($_POST['submit'])){
        $inserted = $db->create('registration', [
            "fullname" => $_POST['fullname'],
            "field" => $_POST['field'],
            "faname" => $_POST['faname'],
            "phone" => $_POST['phone_no'],
            "st_id_no" => $_POST['id_no'],
            "birthdate" => $_POST['birthdate'],
            "date" => jdate("Y/m/d"),
            "time" => jdate("H:i:s")
        ]);
        if($inserted){
            echo "<div class='alert container mt-3 alert-success alert-dismissible fade show' role='alert'>
            داده ها با موفقیت ثبت شد
            <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>
        </div>";
        }else{
            echo "<div class='alert container mt-3 alert-danger alert-dismissible fade show' role='alert'>
            خطا در ثبت داده ها ، مجدد تلاش کنید
            <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>
        </div>";  
        }
    }

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="statics/css/bootstrap.min.css">
    <link rel="stylesheet" href="statics/css/style.css">
</head>
<body>

    <div class="container border border-2 p-3 mt-3 rounded-3 shadow">
        <div class="container">
            <h3>فرم ثبت نام -  دوره <?php echo $data['title'];?></h3>
            <div class="container mt-3">
                <p>
                    دانش آموز گرامی، جهت درخواست ثبت نام در دوره، خواهشمند است اطلاعات فرم ذیل را با دقت تکمیل نمایید. ثبت نام شما پس از واریز وجه و اخذ رسید از مسئول ثبت نام ، معتبر می باشد.
                </p>
            </div>
        </div>
        <form class="text-center p-3" method="POST">
            <div class="container">
                <div class="container">
                    <span>نام و نام خانوادگی : </span>
                </div>
                <div class="container mt-2">
                    <input type="text" name="fullname">
                </div>
            </div>
            <div class="container mt-3">
                <div class="container">
                    <span>رشته : </span>
                </div>
                <div class="container mt-2">
                    <input type="text" name="field">
                </div>
            </div>
            <div class="container mt-3">
                <div class="container">
                    <span>نام پدر : </span>
                </div>
                <div class="container mt-2">
                    <input type="text" name="faname">
                </div>
            </div>
            <div class="container mt-3">
                <div class="container">
                    <span>شماره ملی : </span>
                </div>
                <div class="container mt-2">
                    <input type="text" maxlength="10" name="id_no">
                </div>
            </div>
            <div class="container mt-3">
                <div class="container">
                    <span>شماره همراه : </span>
                </div>
                <div class="container mt-2">
                    <input type="text" maxlength="11" name="phone_no">
                </div>
            </div>
            <div class="container mt-3">
                <div class="container">
                    <span>تاریخ تولد : </span>
                </div>
                <div class="container mt-2">
                    <input type="text" maxlength="10" placeholder="1383/05/09" name="birthdate">
                </div>
            </div>
            <div class="container text-center mt-3">
                <span>مبلغ : </span>
                <span class="fw-bold"><?php echo $data['amount']?> ريال</span>
            </div>
            <div class="container mt-2 text-center mt-3">
                <input type="submit" name="submit" value="تایید">
            </div>
        </form>
    </div>
    <script src="statics/js/bootstrap.bundle.min.js"></script>
</body>
</html>