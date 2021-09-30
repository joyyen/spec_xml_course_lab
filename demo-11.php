<?php
$dom = new DOMDocument;
$dom->load('mod3.lab-3.xml');
if ($dom->schemaValidate('mod3.lab-3.xsd')) {
    echo "Документ является действительным!\n";
} else {
    echo "Документ НЕ является действительным!\n";
}
?>