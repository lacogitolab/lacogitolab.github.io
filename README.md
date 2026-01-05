# personal-site

Personal main site

Forked from https://github.com/Huxpro/huxpro.github.io

[User Manual 👉](_doc/Manual.md)
--------------------------------------------------

### Prerequisites

This project uses [rbenv](https://github.com/rbenv/rbenv) for Ruby version management. Follow these steps to set up your local development environment:

1. **Install rbenv and ruby-build:**

   Using Homebrew (macOS):
   ```sh
   $ brew install rbenv ruby-build
   ```

   Or follow the [official installation guide](https://github.com/rbenv/rbenv#installation) for other platforms.

2. **Initialize rbenv in your shell:**

   Add rbenv to your shell configuration file (`~/.bash_profile`, `~/.zshrc`, etc.):
   ```sh
   $ echo 'eval "$(rbenv init -)"' >> ~/.zshrc  # or ~/.bash_profile
   $ source ~/.zshrc  # or source ~/.bash_profile
   ```

3. **Install Ruby:**

   Install a compatible Ruby version (3.0+ recommended):
   ```sh
   $ rbenv install 3.2.0
   $ rbenv local 3.2.0  # Sets Ruby version for this project
   ```

   Verify the installation:
   ```sh
   $ ruby --version  # Should show ruby 3.2.0
   ```

4. **Install Bundler:**

   ```sh
   $ gem install bundler
   $ rbenv rehash  # Update rbenv shims
   ```

   Verify Bundler installation:
   ```sh
   $ bundler --version
   ```

### Local Development / Debugging

To run the site locally for development and debugging:

1. **Install dependencies:**

   Install Ruby dependencies (Jekyll) using Bundler:
   ```sh
   $ bundle install
   ```

   If you need to modify the theme (compile LESS files), install Node.js dependencies:
   ```sh
   $ npm install
   ```

2. **Start the development server:**

   **Option 1: Using npm script (Recommended)**
   ```sh
   $ npm start
   ```

   **Option 2: Direct Jekyll command**
   ```sh
   $ bundle exec jekyll serve
   ```

3. **Development mode (when modifying theme):**

   If you need to modify LESS files with auto-compilation:
   ```sh
   $ npm run dev
   ```
   This runs both:
   - `grunt watch`: Watches LESS files and auto-compiles
   - `npm run start`: Starts Jekyll server

4. **Access the site:**

   After starting, visit:
   - Local: `http://localhost:4000`
   - Network: `http://YOUR_IP:4000` (when using `npm start`)

**Notes:**
- This project assumes you're using rbenv for Ruby version management (see Prerequisites above)
- When modifying LESS files, use `npm run dev` to auto-compile to CSS
- For Jekyll template changes (`_includes/`, `_layouts/`), `npm start` is sufficient as Jekyll will auto-regenerate pages
- If you encounter issues with native extensions, ensure you're using Ruby 3.0+ via rbenv and have the necessary build tools installed

### Development (Build From Source)

To modify the theme, you will need [Grunt](https://gruntjs.com/). There are numbers of tasks you can find in the `Gruntfile.js`, includes minifing JavaScript, compiling `.less` to `.css`, adding banners to keep the Apache 2.0 license intact, watching for changes, etc. 

Yes, they were inherited and are extremely old-fashioned. There is no modularization and transpilation, etc.

Critical Jekyll-related code are located in `_include/` and `_layouts/`. Most of them are [Liquid](https://github.com/Shopify/liquid/wiki) templates.

This theme uses the default code syntax highlighter of jekyll, [Rouge](http://rouge.jneen.net/), which is compatible with Pygments theme so just pick any pygments theme css (e.g. from [here](http://jwarby.github.io/jekyll-pygments-themes/languages/javascript.html) and replace the content of `highlight.less`.

