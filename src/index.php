<?php
require __DIR__ .'/../vendor/autoload.php';

$exampleClass = new \App\Components\ExampleClass();

echo 'hello '.$exampleClass->getExampleString();
