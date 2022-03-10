# Laravel 8 boilerplate removal script
Cleans up all the boilerplate code for Laravel project.

Supports Laravel 8.x.x, 9.x.x

## Running script
From your laravel project's root directory in your terminal run the following command :

### For Laravel 8
```console
bash -c "$(curl -s https://raw.githubusercontent.com/mopalgen/laravel-8-boilerplate-removal-bash-script/main/laravel-8-boilerplate-removal-script.sh)"
```

### For Laravel 9
```console
bash -c "$(curl -s https://raw.githubusercontent.com/mopalgen/laravel-8-boilerplate-removal-bash-script/main/laravel-9-boilerplate-removal-script.sh)"
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

- config/auth.php                       [MODIFY]

- webpack.min.js                        [MODIFY]

- phpunit.xml                           [MODIFY]

- README.md                             [DELETE]
<br />

> :warning: The script will delete itself after script execution is completed.
