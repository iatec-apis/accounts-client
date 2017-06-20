@echo off
rmdir /s/q docs src\Iatec.Apis.Accounts.v1.Client .vs
del build.* *.yml *.sh
java -jar "generator\swagger-codegen-cli.jar" generate -l csharp -i "https://ws-accounts-dev.sdasystems.org/docs/static/spec.yaml" --config "generator\config.json" --model-name-suffix=Model
