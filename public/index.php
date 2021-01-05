<?php

use App\Database\DBFactory;

/** Root directory **/
define('ROOT_PATH', __DIR__);

// Composer autoloading
require_once ROOT_PATH.'/../vendor/autoload.php';

//////// Whoops error handler framework
$whoops = new \Whoops\Run;
$whoops->prependHandler(new \Whoops\Handler\PrettyPageHandler);
$whoops->register();
//////////////

require_once '../views/templates/layout.view.php';

echo '<h1>test</h1>';


$pdo = DBFactory::getPDO();
dump($pdo);
