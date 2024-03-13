#!/bin/bash

# Импортирует функции
. config.sh

# Создает проект слоя по шаблону
function __create_project()
{
    
    TEMPLATE=$1
    PROJECT=$2

    dotnet new $TEMPLATE --output $ROOT/src/$PROJECT/$MICROSERVICE.$PROJECT
    dotnet sln $ROOT/src/$SOLUTION.sln add $ROOT/src/$PROJECT/$MICROSERVICE.$PROJECT
    
    # Удаляет автоматически сгенерированный файл "Class1.cs"
    dotnet new class --project $ROOT/src/$PROJECT/$MICROSERVICE.$PROJECT/$MICROSERVICE.$PROJECT.csproj --output $ROOT/src/$PROJECT/$MICROSERVICE.$PROJECT --name Advertisement
    if [ -f "$ROOT/src/$PROJECT/$MICROSERVICE.$PROJECT/Class1.cs" ] ; then
        rm "$ROOT/src/$PROJECT/$MICROSERVICE.$PROJECT/Class1.cs"
    fi

}