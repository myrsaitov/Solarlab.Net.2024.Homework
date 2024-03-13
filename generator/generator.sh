#!/bin/bash


# Импортирует функции
. config.sh
. __create_project.sh





dotnet new sln --output $ROOT/src --name $SOLUTION

__create_project classlib Domain
__create_class Domain Advertisement

__create_project classlib Contracts


# dotnet add src/Domain/Homework.Domain reference src/Domain/Homework.Domain
# dotnet add src/Domain/Homework.Domain package {nuget}