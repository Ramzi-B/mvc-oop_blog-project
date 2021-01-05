<?php

namespace App\Database;

use \PDO;

class DBFactory
{
    public static function getPDO()
    {
        $pdo = new PDO('mysql:host=localhost;dbname=projectBlogMVC;charset=utf8', 'root', 'root');
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $pdo->exec('SET NAMES "utf8"');

        return $pdo;
    }
}
