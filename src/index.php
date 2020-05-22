<?php

use App\Components\ExampleClass;

require __DIR__ .'/../vendor/autoload.php';

$exampleClass = new ExampleClass();

echo 'hello '.$exampleClass->getExampleString();
