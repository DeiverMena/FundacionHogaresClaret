<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;


class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       $role1 = Role::create(['name'=>'Admin']);
        $role2 = Role::create(['name'=>'Profesional']);

        //Users
            Permission::create(['name'=>'users.index'])->syncRoles($role1);
            Permission::create(['name'=>'users.show'])->syncRoles($role1);
            Permission::create(['name'=>'users.create'])->syncRoles($role1);
            Permission::create(['name'=>'users.edit'])->syncRoles($role1);
            Permission::create(['name'=>'users.destroy'])->syncRoles($role1);

        //Roles
            Permission::create(['name'=>'roles.index'])->syncRoles($role1);
            Permission::create(['name'=>'roles.show'])->syncRoles($role1);
            Permission::create(['name'=>'roles.create'])->syncRoles($role1);
            Permission::create(['name'=>'roles.edit'])->syncRoles($role1);
            Permission::create(['name'=>'roles.destroy'])->syncRoles($role1);

    }
}
