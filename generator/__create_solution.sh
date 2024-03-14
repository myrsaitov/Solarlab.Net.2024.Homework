#!/bin/bash

# Импортирует функции
. config.sh

# Создает Solution
function __create_solution()
{
    

    # Если файл существует, то ничего не делаем
    if [ -f "$SOLUTION" ] ; then

        echo "$SOLUTION" exists! There is nothing to do!

    else

        # Создаёт Solution
        echo Creating "$SOLUTION"!
        dotnet new sln --output $SOLUTION_PATH --name $SOLUTION_NAME

    fi

}
