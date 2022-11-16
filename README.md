# Demo Using GraalVM GitHub Actions

This example will use [GitHub Action for GraalVM](https://github.com/marketplace/actions/github-action-for-graalvm) with a simple Spring Boot project.

Clone/download the repository:
```
$ git clone https://github.com/swseighman/Actions-Demo.git
$ cd Actions-Demo
```

The project will build without any changes, but if you make some changes to the project and `git push` the updates, this will trigger the GitHub action(s).

```
$ git push -u origin main
```

Open a browser and open the GitHub project.  Then click on `Actions`.

You should see a new workflow job in progress:


