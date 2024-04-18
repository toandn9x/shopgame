<?php


use ShopGame\core\Pagination;

require_once '../bootstrap.php';

$request_uri = $_SERVER['REQUEST_URI'];
$request_uri = explode('?', $request_uri);
$request_uri = isset($request_uri[1]) ? $request_uri[1] : NULL ;
$request_uri = explode('page=', $request_uri);
$page = isset($request_uri[1]) ? $request_uri[1] : NULL;

$slug = cleanInput($_GET['slug']);
$result = $db->select('categories', '*', [
    'type' => 'game',
    'slug' => $slug,
    'status' => 1
]);

$result_hot = $db->select('categories', '*', [
    'type' => 'hot',
    'slug' => $slug,
    'status' => 1
]);

if (count($result) > 0) {
    $_GET['page'] = $page;
    $category = $result[0];
    $title = $category['name'];

    $count = $db->count('accounts', [
        'category_id' => $category['id'],
        'status' => 1
    ]);

    $pagination = new Pagination([
        'totalCount' => $count,
    ]);

    $accounts = $db->select('accounts', '*', [
        'category_id' => $category['id'],
        'status' => 1,
        'ORDER' => ['id' => 'DESC'],
        'LIMIT' => [$pagination->offset, $pagination->limit]
    ]);

    require_once '../views/category.php';
}

elseif (count($result_hot) > 0) {
    $_GET['page'] = $page;
    $category = $result_hot[0];
    $title = $category['name'];
	require_once '../views/categories_hot.php';
} 

else {
    require_once '../controllers/errors/404.php';
}
