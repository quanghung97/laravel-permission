## Introduction
- Laravel permission using package.

## Guide for developer
- I'm so recommend developer using ubuntu OS
- using XAMPP


### Note:
- install package laravel-permission and collectivehtml to support create Form and Html
- Here is tutorial https://www.youtube.com/watch?v=6Hbqoo64u4A
## PHP coding standards (phpcs)
- Project follow **PSR-2 coding standards** (contains **PSR-1 coding standards**)
- **YOU MUST** follow **PSR-2** and **PSR-1**
- **PSR-1**: https://github.com/php-fig/fig-standards/blob/master/accepted/PSR-1-basic-coding-standard.md
- **PSR-2**: https://github.com/php-fig/fig-standards/blob/master/accepted/PSR-2-coding-style-guide.md
- More Rule: https://gitlab.com/promise-team/promise_ecommerce/tree/master/phpcs/Sniffs/doc.md
- **NOTE**: `php artisan phpcs:check` will check phpcs in `app/`, `resources/views/`, `routes/` folders
- Run phpcs for special folder: `php artisan phpcs:check {folder_name}`
- Example check phpcs in "app/" folder only: `php artisan phpcs:check app/`

## HTML lint
- Project using `htmllint` node package
- `.htmllintrc` is file config HTML rule
- Run htmllint to check syntax for resources/views folders: `php artisan html:check`
