<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call([
            RoleSeeder::class,
            PermissionSeeder::class,
            LanguageSeeder::class,
            PermissionSeederV2::class,
            PermissionSeederV21::class,
            PermissionSeederV22::class,
            PermissionSeederV23::class
        ]);
    }
}
