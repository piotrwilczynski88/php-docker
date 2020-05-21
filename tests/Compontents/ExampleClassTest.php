<?php

namespace App\Components;

use PHPUnit\Framework\TestCase;

class ExampleClassTest extends TestCase
{
    public function testGetExampleString_ReturnExampleString()
    {
        $exampleClass = new ExampleClass();
        $this->assertEquals('world', $exampleClass->getExampleString());
    }
}
