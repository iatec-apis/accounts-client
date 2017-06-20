@echo off
rmdir /s/q docs src .vs
del build.* *.yml *.sh
java -jar "generator\swagger-codegen-cli.jar" generate -l csharp -i "https://ws-accounts-dev.sdasystems.org/docs/static/spec.yaml" --config "generator\config.json" --model-name-suffix=Model --git-repo-id=iatec-api --git-user-id=accounts-client
