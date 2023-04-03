<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        
        User::create([

            'name'=> 'Edward Lopez',
            'email'=> 'administrador@hotmail.com',
            'password'=>bcrypt('123456789')

        ])->assignRole('Admin');

   User::create([

            'name'=> 'Daniel Espitia',
            'email'=> 'pototos97@hotmail.com',
            'password'=>bcrypt('123456789')

        ])->assignRole('Profesional');


    }
}
