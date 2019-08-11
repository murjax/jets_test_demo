# Jets Test Demo

This demo app was created to demonstrate a bug with the jets migration task.

Steps to reproduce:

1. `git clone https://github.com/murjax/jets_test_demo.git`
2. `cd jets_test_demo`
3. `bundle`
4. `jets db:create`
5. `jets db:migrate`
6. `bundle exec rspec`

The test should fail with an error:
```
ActionView::Template::Error: Mysql2::Error: Table 'demo_test.posts' doesn't exist: SELECT `posts`.* FROM `posts`
```
The `posts` table was not created on the test database.

7. `JETS_ENV=test jets db:migrate `
8. `bundle exec rspec`

The test passes because the `posts` table was created on the test database.
