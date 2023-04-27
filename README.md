An image for running dbt CI builds.

To use it in Github actions, specify the `container` tag in your workflow.

```yaml
jobs:
  my-job:
    runs-on: ubuntu-latest
    container: 
      image: docker.pkg.github.com/toca-llc/snowflake_dbt/snowflake_dbt:latest
      credentials:
        username: ${{ github.actor }}
        password: ${{ secrets.GITHUB_TOKEN }} 
```
