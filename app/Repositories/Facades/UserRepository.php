<?php

namespace App\Repositories\Facades;

use Illuminate\Support\Facades\Facade;

class UserRepository extends Facade
{
    protected static function getFacadeAccessor()
    {
        return 'App\\Contracts\\Repositories\\UserInterface';
    }
}
