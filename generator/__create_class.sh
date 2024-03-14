#!/bin/bash

# Импортирует функции
. config.sh

# Создает класс в указанном слое
function __create_class()
{
    
    PROJECT=$1
    CLASS=$2

    # Папка, где расположен проект
    CLASS_FILEPATH=$ROOT/src/$PROJECT/$MICROSERVICE.$PROJECT/$CLASS.cs

    # Если файл существует, то ничего не делаем
    if [ -f "$CLASS_FILEPATH" ] ; then
        echo "$CLASS_FILEPATH" exists! There is nothing to do!
    else
        # Создает файл с классом
        echo Creating "$CLASS_FILEPATH"!
        dotnet new class --project $PROJECT_DIR/$MICROSERVICE.$PROJECT.csproj --output $PROJECT_DIR --name $CLASS
    fi

}