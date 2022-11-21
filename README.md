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

On your GitHub repository page, you can access the container image by clicking on the package link:


You can pull the image directly by executing the following command:

```
$ docker pull ghcr.io/swseighman/actions-demo:latest
```

To run the container:
```
$ podman run --rm -p 8080:8080 ghcr.io/swseighman/actions-demo
```

To download the container image from OCIR, login to the registry:

```
$ podman login iad.ocir.io
Username: <tenancy-namespace>/oracleidentitycloudservice/scottseighman@gmail.com
Password: <Use Auth-Token>
Login Succeeded!
```

To pull the image:
```
$ podman pull iad.ocir.io/<tenancy-namespace>/actions-demo:native
Trying to pull iad.ocir.io/<tenancy-namespace>/actions-demo:native...
Getting image source signatures
Copying blob 38fac89bc44d skipped: already exists
Copying blob 1c31d27bdbd7 done
Copying config 39db03c3b8 done
Writing manifest to image destination
Storing signatures
39db03c3b82d4db91da36f4f459688641f905763ce2da455cd4c5c780d639e05
```

To run the container:
```
$ podman run --rm -p 8080:8080 iad.ocir.io/<tenancy-namespace>/actions-demo:native
```


