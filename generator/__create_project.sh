#!/bin/bash

# Импортирует функции
. config.sh

# Создает проект слоя по шаблону
function __create_project()
{
    
    TEMPLATE=$1
    PROJECT=$2
    PROJECT_DIR=$ROOT/src/$PROJECT/$MICROSERVICE.$PROJECT

    # Проверяет, существует ли директория с проектом
    if [ -d "$PROJECT_DIR" ]; then

        # Если директория существует, то ничего не делаем
        echo "Directory \"$PROJECT_DIR\" exists. There is nothing to do!"

    else

        # Если директории не существует, то создаем проект
        echo "Directory \"$PROJECT_DIR\" does not exist. Creating the project!"

        # Создаёт проект по шаблону
        dotnet new $TEMPLATE --output $PROJECT_DIR

        # Добавляет проект в Solution
        dotnet sln $SOLUTION add $PROJECT_DIR
        
        # Удаляет автоматически сгенерированный файл "Class1.cs"
        if [ -f "$PROJECT_DIR/Class1.cs" ] ; then
            rm "$PROJECT_DIR/Class1.cs"
        fi

    fi

}