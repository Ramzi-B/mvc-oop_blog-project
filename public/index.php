<?php

use App\Database\DBFactory;

/** Root directory **/
define('ROOT_PATH', __DIR__);

/** Views directory **/
define('VIEWS_PATH', realpath(ROOT_PATH . '/../views'));

// Composer autoloading
require_once ROOT_PATH . '/../vendor/autoload.php';

//////// Whoops error handler framework
$whoops = new \Whoops\Run;
$whoops->prependHandler(new \Whoops\Handler\PrettyPageHandler);
$whoops->register();
//////////////

require_once VIEWS_PATH . '/templates/layout.view.php';


$pdo = DBFactory::getPDO();
dump($pdo);
