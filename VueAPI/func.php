<?php

function getWorkDo($pdo,$limit = null){
  if ($limit !== null ) {
    $work_do_query = "SELECT * FROM `workdo` LIMIT $limit";
  }else {
    $work_do_query = "SELECT * FROM `workdo`";
  }
  $get_work_do = $pdo->query($work_do_query);
  $use = [];
  while($work_do = $get_work_do->fetchAll()) {
    $use = $work_do;
    echo  json_encode($use, JSON_PRETTY_PRINT);
  }
}

function getBlogs($pdo, $limit = null){
  if ($limit !== null ) {
    $blogs_query = "SELECT * FROM `blogs` LIMIT $limit";
  }else {
    $blogs_query = "SELECT * FROM `blogs`";
  }
  $get_blogs = $pdo->query($blogs_query);
  $use = [];
  while ($blogs = $get_blogs->fetchAll()) {
    $use = $blogs;
    echo json_encode($use, JSON_PRETTY_PRINT);
  }
}

function getBlog($pdo, $id){
  $blogs_query = "SELECT * FROM `blogs` WHERE `id`=$id";
  $get_blogs = $pdo->query($blogs_query);
  $container = [];

    while($blog = $get_blogs->fetchAll()) {
      $container = $blog;
      echo  json_encode($container, JSON_PRETTY_PRINT);
    }
}



function getWorks($pdo, $limit = null){
  if ($limit !== null ) {
    $query_work = "SELECT * FROM `works` LIMIT $limit";
  }else {
    $query_work = "SELECT * FROM `works`";
  }
  $get_work = $pdo->query($query_work);
  $use = [];
  while ($works = $get_work->fetchAll()) {
    $use = $works;
    echo json_encode($use, JSON_PRETTY_PRINT);
  }
}

function getWork($pdo, $id){
  $query_work = "SELECT * FROM `works` WHERE `id`=$id";
  $get_work = $pdo->query($query_work);
  $container = [];
    while($works = $get_work->fetchAll()) {
      $container = $works;
      echo  json_encode($container, JSON_PRETTY_PRINT);
    }
}

function getComment($pdo, $id){
  $query_comments = "SELECT * FROM `comments` WHERE `id_blog`=$id";
  $get_comments = $pdo->query($query_comments);
  $container = [];
    while($comments = $get_comments->fetchAll()) {
      $container = $comments;
      echo  json_encode($container, JSON_PRETTY_PRINT);
    }
}

function addContacts($pdo,$data){
  $data = file_get_contents('php://input');
  $data = json_decode($data, true);
  $name = $data['name'];
  $email = $data['email'];
  $phone = $data['phone'];
  $timezone = $data['timezone'];
  $budget = $data['budget'];
  $type = $data['type'];
  $message = $data['message'];
  $query_add = "INSERT INTO `contacts` (`id`, `name`, `email`, `phone`,`timezone`, `budget`, `type`, `message`) VALUES (NULL, '$name', '$email', '$phone', '$timezone', '$budget', '$type', '$message')";
  $post = $pdo->query($query_add);
  http_response_code(201);
  $res = [
    "status" => true,
    "post_id" => $pdo->lastInsertId(),
  ];
  echo json_encode($res);
}

function addComments($pdo,$data){
  $data = file_get_contents('php://input');
  $data = json_decode($data, true);
  $name = $data['name'];
  $email = $data['email'];
  $website = $data['website'];
  $date = $data['date'];
  $blog_id = $data['blog_id'];
  $message = $data['message'];
  $query_add = "INSERT INTO `comments` (`id`, `name`, `email`, `website`, `message`, `date`, `id_blog`) VALUES (NULL, '$name', '$email', '$website', '$message', '$date', '$blog_id')";
  $post = $pdo->query($query_add);
  http_response_code(201);
  $res = [
    "status" => true,
    "post_id" => $pdo->lastInsertId(),
  ];
  echo json_encode($res);
}
