# Laravel 8 boilerplate removal script
Cleans up all the boilerplate code for Laravel project.

Supports Laravel 8.x.x

## Installation 
In your laravel project's root directory, download the file: laravel-8-boilerplate-removal-script.sh

```console
wget https://raw.githubusercontent.com/mopalgen/laravel-8-boilerplate-removal-bash-script/main/laravel-8-boilerplate-removal-script.sh
```

## Running 
From your laravel project's root directory in your terminal run the following command :
```console
sh laravel-8-boilerplate-removal-script.sh
```
or
```console
bash laravel-8-boilerplate-removal-script.sh
```
Then enter 1 to continue.

## Deleted or modified files
- tests/Feature/*                       [DELETE]
- tests/Unit/*                          [DELETE]
- tests/TestCase.php                    [DELETE]

- routes/api.php                        [MODIFY]
- routes/channels.php                   [MODIFY]
- routes/console.php                    [MODIFY]
- routes/web.php                        [MODIFY]

- resources/css                         [DELETE]
- resources/js                          [DELETE]
- resources/views/*                     [DELETE]

- public/favicon.ico                    [DELETE]

- database/factories/*                  [DELETE]
- database/seeders/DatabaseSeeder.php   [MODIFY]

- app/Console/Kernel.php                [MODIFY]
- app/Models/User.php                   [DELETE]

- webpack.min.js                        [MODIFY]

- phpunit.xml                           [MODIFY]

- README.md                             [DELETE]
<br />

> :warning: The script will delete itself after script execution is completed.
