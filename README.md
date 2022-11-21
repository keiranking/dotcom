# dotcom

The [Middleman] app behind [keiranking.com].

[Middleman]: https://middlemanapp.com/
[keiranking.com]: https://keiranking.com/

## Setup

After you have cloned this repo, follow these steps to run the app:

1. Run the setup script to set up your machine with the necessary dependencies:

    ```
    bin/setup
    ```

1. Start the Middleman server:

    ```
    bundle exec middleman server
    ```

    You should now be able to view your app at <http://localhost:4567>.

## Testing

Pull requests are automatically deployed to Netlify. For example, https://github.com/keiranking/dotcom/pull/19 can be previewed at https://deploy-preview-19--keiranking.netlify.app.

## Deployment

`origin/master` is automatically deployed to Netlify at https://keiranking.netlify.app.

To deploy elsewhere:

1. Build the static site:

    ```
    bundle exec middleman build
    ```

    The generated files should be in the `/build` subdirectory of the root project folder, and should include an `index.html` representing the homepage.

2. Move the site contents to a web server.
