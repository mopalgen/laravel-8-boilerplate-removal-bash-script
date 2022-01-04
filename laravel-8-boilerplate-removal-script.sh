#!/bin/sh
# Cleans up all the boilerplate code in your laravel project (Support Laravel 8)
#
#   - tests/Feature/*                       [DELETE]
#   - tests/Unit/*                          [DELETE]
#   - tests/TestCase.php                    [DELETE]
#
#   - routes/api.php                        [MODIFY]
#   - routes/channels.php                   [MODIFY]
#   - routes/console.php                    [MODIFY]
#   - routes/web.php                        [MODIFY]
#
#   - resources/css                         [DELETE]
#   - resources/js                          [DELETE]
#   - resources/views/*                     [DELETE]
#
#   - public/favicon.ico                    [DELETE]
#
#   - database/factories/*                  [DELETE]
#   - database/seeders/DatabaseSeeder.php   [MODIFY]
#
#   - app/Console/Kernel.php                [MODIFY]
#   - app/Models/User.php                   [DELETE]
#
#   - webpack.mix.js                        [MODIFY]
#
#   - README.md                             [DELETE]

LARAVEL_VERSION=$(php artisan --version)
LARAVEL_VERSION=${LARAVEL_VERSION//[!0-9.]/}
LARAVEL_VERSION_NUMBER=${LARAVEL_VERSION%%.*}

LARAVEL_CURRENT_ENVIRONMENT=$(php artisan env)

echo "Do you wish to clean up your laravel instance boilerplate (1/2)?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) break;;
        No ) exit;;
    esac
done

echo "Current Laravel Version : $LARAVEL_VERSION"
echo -n "Checking Laravel version . . . "

if [ $LARAVEL_VERSION_NUMBER -ge 8 ] && [ $LARAVEL_VERSION_NUMBER -lt 9 ]
then
    echo "OK"
    if [[ $LARAVEL_CURRENT_ENVIRONMENT == *"production"* ]]
    then
        echo "Cannot run in production mode."
        exit 1
    else
        echo "Starting cleanup . . . "

        echo -n "Deleting Models . . . "
        rm -rf app/Models/*
        echo "Completed!"

        echo -n "Deleting database factories . . . "
        rm -rf database/factories/*
        echo "Completed!"

        echo -n "Deleting tests . . . "
        rm -rf tests/Feature/*
        rm -rf tests/Unit/*
        rm -f tests/TestCase.php
        echo "Completed!"

        echo -n "Deleting resources . . . "
        rm -rf resources/css
        rm -rf resources/js
        rm -rf resources/views/*
        echo "Completed!"

        echo -n "Deleting static assets . . . "
        rm -f public/favicon.ico
        echo "Completed!"

        echo -n "Deleting README.md . . . "
        rm -f README.md
        echo "Completed!"

        echo -n "Cleaning routes . . . "
        sed -i '' '1,/\*\//!d' routes/web.php
        sed -i '' '1,/\*\//!d' routes/api.php
        sed -i '' '1,/\*\//!d' routes/channels.php
        sed -i '' '1,/\*\//!d' routes/console.php
        echo "Completed!"

        echo -n "Cleaning database seeders . . . "
        sed -i '' '/\/\//d' database/seeders/DatabaseSeeder.php
        echo "Completed!"

        echo -n "Cleaning Kernel . . . "
        sed -i '' '/\/\//d' app/Console/Kernel.php
        echo "Completed!"
        
        echo -n "Cleaning webpack.min.js . . . "
        sed -i '' '1,/\*\//!d' webpack.mix.js
        echo "Completed!"

        echo "Completed Cleanup !!"
        rm -- "$0"
    fi
else
    echo "FAILED"
    echo "This version of Laravel is not supported."
    exit 1
fi
