# Task 4

The [Sass Basics](https://sass-lang.com/guide/) articles
will help you with these tasks.

### Step 1

* Open `main.R`.
* Move `style` to the `center` class in `app/styles/main.scss`.
* Run `rhino::build_sass()` and check that the text is still centered.

### Step 2

* Run `rhino::lint_sass()`.
* Run `lint_sass(fix = TRUE)`.

### Step 3

* Add `@use 'base';` to import the `_base.scss` module.
* Use the variables defined in that module to set `font` and `color` on `body`.

### Step 4

* Add some background to `body` with the `gradient` mixin.
