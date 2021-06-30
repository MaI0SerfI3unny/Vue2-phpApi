<?php
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Methods: GET, POST, PATCH, PUT, DELETE, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");
header('Content-Type: JSON');
require 'data/db.php';
require 'func.php';

$type = $_GET['q'];
$method = $_SERVER['REQUEST_METHOD'];

$params = explode('/', $type);
$contact = $params[0];
@$id = $params[1];

if ($method === 'GET') {
  if ($contact === 'workdo') {
    if (@$_GET['limit']) {
      getWorkDo($pdo, $_GET['limit']);
      http_response_code(200);
    }else {
      getWorkDo($pdo);
      http_response_code(200);

    }
  }elseif ($contact === 'blogs') {
    if (@$_GET['limit']) {
      getBlogs($pdo, $_GET['limit']);
      http_response_code(200);
    }else {
      if (isset($id)) {
        getBlog($pdo,$id);
        http_response_code(200);
      }else{
        getBlogs($pdo);
        http_response_code(200);
      }
    }
  }elseif ($contact === 'works') {
    if (@$_GET['limit']) {
      getWorks($pdo, $_GET['limit']);
      http_response_code(200);
    }else {
      if (isset($id)) {
        getWork($pdo,$id);
        http_response_code(200);
      }else{
        getWorks($pdo);
        http_response_code(200);
      }
    }
  }elseif ($contact === 'comments') {
      if (isset($id)) {
        getComment($pdo,$id);
        http_response_code(200);
      }else{
        echo "Status undefined";
        http_response_code(404);
      }
  }else {
    echo "Status undefined";
    http_response_code(404);
  }
}else if ($method === 'POST') {
  if ($contact === 'contacts') {
    addContacts($pdo, $_POST);
  }elseif ($contact === 'comments') {
    addComments($pdo, $_POST);
  }
}
