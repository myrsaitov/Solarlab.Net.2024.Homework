#!/bin/bash

# Импортирует функции
. config.sh

# Создает класс в указанном слое
function __create_class()
{
    
    PROJECT=$1
    CLASS=$2

    dotnet new class --project $ROOT/src/$PROJECT/$MICROSERVICE.$PROJECT/$MICROSERVICE.$PROJECT.csproj --output $ROOT/src/$PROJECT/$MICROSERVICE.$PROJECT --name $CLASS

}