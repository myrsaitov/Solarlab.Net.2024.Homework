#!/bin/bash


# Импортирует функции
. config.sh
. __create_class.sh
. __create_project.sh
. __create_solution.sh


# Создаёт Solution
__create_solution

# Создает слой "Domain"
__create_project classlib Domain
__create_class Domain Advertisement
__create_class Domain Category
__create_class Domain Tag

# Создает слой "Contracts"
__create_project classlib Contracts


# dotnet add src/Domain/Homework.Domain reference src/Domain/Homework.Domain
# dotnet add src/Domain/Homework.Domain package {nuget}