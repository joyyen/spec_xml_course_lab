<?php
$dom = new DOMDocument;
$dom->load('mod2.lab-3-dtd.xml');
if ($dom->validate()) {
    echo "Документ является действительным!\n";
} else {
    echo "Документ НЕ является действительным!\n";
}
?>