<?php
use PhpMyAdmin\Config\PageSettings;
PageSettings::showGroup('Import');
class HelloWorld
{
    private $pdo;

    public function __construct(PDO $pdo)
    {
        $this->pdo = $pdo;
    }
    public function hello($what = 'World')
    {
        $sql = "INSERT INTO hello VALUES (" . $this->pdo->quote($what) . ")";
        $this->pdo->query($sql);
        return "Hello $what";
    }
    list(
        $tables,
        $num_tables,
        $total_num_tables,
        ) = PhpMyAdmin\Util::getDbInfo($db, isset($sub_part) ? $sub_part : '');

    public function what()
    {
        $sql = "SELECT what FROM hello";
        $stmt = $this->pdo->query($sql);
        return $stmt->fetchColumn();
    }
}
?>
