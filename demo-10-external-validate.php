<?php
// Проверка корректности внешнего файла

//$url = "https://news.yandex.ru/travels.rss";
//$url = "http://www.cbr.ru/scripts/XML_daily.asp?date_req=02/03/2002";
$url = "http://127.0.0.1:5500/lab/mod2.lab-3-dtd.xml";

$options = array(
  'http'=>array(
    'method'=>"GET",
    'header'=>"Accept-language: en\r\n" .
              "Cookie: foo=bar\r\n" .  // check function.stream-context-create on php.net
              "User-Agent: Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B334b Safari/531.21.102011-10-16 20:23:10\r\n" // i.e. An iPad 
  )
);

$context = stream_context_create($options);
$file = file_get_contents($url, false, $context);

$dom = new DOMDocument;
//$dom->load('mod2.lab-3-dtd.xml');

$dom->loadXML(
    $file 
);
if ($dom->validate()) {
    echo "Документ является действительным!\n";
} else {
    echo "Документ НЕ является действительным!\n";
}
echo $file;
?>