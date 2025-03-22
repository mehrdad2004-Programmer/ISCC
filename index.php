<?php 
  require_once __DIR__ . "/modules/database/database.php";
  $db = new Database();

  $news = array_slice($db->read('news'), -5);


  $last_news = array_pop($news);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>انجمن</title>
    <link rel="stylesheet" href="statics/css/bootstrap.min.css">
    <link rel="stylesheet" href="statics/css/style.css">
</head>
<body>
    <div class="container">
        <!-- <div class="container-fluid bg-header border border-2">

        </div> -->
        <div class="container-fluid">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">
                  <a class="navbar-brand" href="#">Navbar</a>
                  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                      <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                      </li>
                      <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                          Dropdown
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                          <li><a class="dropdown-item" href="#">Action</a></li>
                          <li><a class="dropdown-item" href="#">Another action</a></li>
                          <li><hr class="dropdown-divider"></li>
                          <li><a class="dropdown-item" href="#">Something else here</a></li>
                        </ul>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                      </li>
                    </ul>
                    <form class="d-flex">
                      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                      <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                  </div>
                </div>
              </nav>
        </div>
    </div>
    <div class="container border border-2 mt-3 d-flex">
        <div class="container border border-2">
            <div class="container news news-bg">
               <?php echo "<img src='statics/news_poster/" . $last_news['poster'] . "'" . " style='width:100%'" . ">";?>
            </div>
            <div class="container mt-3 border border-2 p-1 text-center">
                <span><?php echo $last_news['title']?></span>
            </div>
        </div>
        <div class="container">
            <?php
                foreach($news as $item){
                    echo "            
                    <div class='container mt-3 border border-2 d-flex'>
                <div class='container border border-2 thumbnail'>
                    <img src='statics/news_poster/" . $item['poster'] . "'" . " style='width: 100%'>
                </div>
                <div class='container border border-2'>
                    <div class='container'>
                        ".$item['title']."
                    </div>
                    <div class='container'>
                        ".$item['text']."
                    </div>
                </div>
            </div>";
                }
            ?>
        </div>
    </div>
    <div class="container border border-2 rounded-3 mt-3 p-1 rounded-3 text-light" style="background-color : #007BFF">
      <span>انجمن کامپیوتر</span>
    </div>
    <div class="container mt-3">
        <div class="container text-center p-2">
             دوره های در حال برگزاری
        </div>
        <div class="container d-flex justify-content-between align-items-center course-box overflow-scroll">
            <?php
              $data = array_slice($db->read('courses', ["comunity" => "کامپیوتر"]), -5);
              foreach($data as $item){
                echo "
                  <div class='course p-1 d-flex flex-column' style='height:fit-content; width:fit-content'>
                    <a href='tozihat.php?code=".$item['code'] . "'" ."><img src = 'statics/course_poster/" . $item['poster'] . "' style='height:150px; width:150px; border-radius:inherit'></a> 
                    <div class='container-fluid'>
                      <span>".$item['title']."</span>
                    </div>                   
                  </div>
                ";
              }
            ?>
        </div>
    </div>
    <div class="container mt-3 d-flex flex-column">
        <div class="container text-center p-2">
             مقالات
        </div>
        <div class="container course-box d-flex justify-content-between align-items-center overflow-scroll">
          <?php
              $data = array_slice($db->read('articles', ["community" => "کامپیوتر"]), -5);
              foreach($data as $item){
                echo "
                  <div class='course p-1 d-flex flex-column' style='height:fit-content; width:fit-content'>
                    <img src = 'statics/course_poster/" . $item['poster'] . "' style='height:150px; width:150px; border-radius:inherit'> 
                    <div class='container-fluid'>
                      <span>".$item['title']."</span>
                    </div>                   
                  </div>
                ";
              }
            ?>
        </div>
    </div>

    <!-- انجمن رباتیک-->
    <div class="container border border-2 mt-3 p-1 rounded-3" style="background-color: #C0C0C0">
      <span>انجمن رباتیک</span>
    </div>
    <div class="container mt-3">
        <div class="container text-center p-2">
             دوره های در حال برگزاری
        </div>
        <div class="container d-flex justify-content-between align-items-center course-box overflow-scroll">
            <?php
              $data = array_slice($db->read('courses', ["comunity" => "رباتیک"]), -5);
              foreach($data as $item){
                echo "
                  <div class='course p-1 d-flex flex-column' style='height:fit-content; width:fit-content'>
                    <img src = 'statics/course_poster/" . $item['poster'] . "' style='height:150px; width:150px; border-radius:inherit'> 
                    <div class='container-fluid'>
                      <span>".$item['title']."</span>
                    </div>                   
                  </div>
                ";
              }
            ?>
        </div>
    </div>
    <div class="container mt-3 d-flex flex-column">
        <div class="container text-center p-2">
             مقالات
        </div>
        <div class="container course-box d-flex justify-content-between align-items-center overflow-scroll">
          <?php
              $data = array_slice($db->read('articles', ["community" => "رباتیک"]), -5);
              foreach($data as $item){
                echo "
                  <div class='course p-1 d-flex flex-column' style='height:fit-content; width:fit-content'>
                    <img src = 'statics/course_poster/" . $item['poster'] . "' style='height:150px; width:150px; border-radius:inherit'> 
                    <div class='container-fluid'>
                      <span>".$item['title']."</span>
                    </div>                   
                  </div>
                ";
              }
            ?>
        </div>
    </div>
    <script src="statics/js/bootstrap.bundle.min.js"></script>
</body>
</html>